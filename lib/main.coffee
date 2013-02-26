{readdirSync, readFileSync} = require 'fs'
{join} = require 'path'
async = require 'async'
clear = require 'clear'

# execute node-celery-man (by bahamas10)
celery_path = join __dirname, "./ascii"
celery = []
delay = 40
readdirSync(celery_path).sort().forEach (file, i)  ->
    celery[i] = readFileSync join(celery_path, file), 'ascii'

module.exports = enterprise =
  scale: ->
    hatWobble = (flarhgunnstow, done) ->
      clear()
      console.log flarhgunnstow
      finish = ->
        clear false
        done()
      setTimeout finish, delay
    async.forEachSeries celery, hatWobble, enterprise.scale