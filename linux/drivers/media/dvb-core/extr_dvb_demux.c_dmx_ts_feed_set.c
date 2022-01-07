
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dvb_demux_feed {int ts_type; int pes_type; int state; int timeout; scalar_t__ pid; struct dvb_demux* demux; } ;
struct dvb_demux {int mutex; scalar_t__* pids; struct dvb_demux_feed** pesfilter; } ;
struct dmx_ts_feed {int dummy; } ;
typedef int ktime_t ;
typedef enum dmx_ts_pes { ____Placeholder_dmx_ts_pes } dmx_ts_pes ;


 scalar_t__ DMX_MAX_PID ;
 int DMX_PES_OTHER ;
 int DMX_STATE_READY ;
 int EINVAL ;
 int ERESTARTSYS ;
 int TS_DECODER ;
 int dvb_demux_feed_add (struct dvb_demux_feed*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dmx_ts_feed_set(struct dmx_ts_feed *ts_feed, u16 pid, int ts_type,
      enum dmx_ts_pes pes_type, ktime_t timeout)
{
 struct dvb_demux_feed *feed = (struct dvb_demux_feed *)ts_feed;
 struct dvb_demux *demux = feed->demux;

 if (pid > DMX_MAX_PID)
  return -EINVAL;

 if (mutex_lock_interruptible(&demux->mutex))
  return -ERESTARTSYS;

 if (ts_type & TS_DECODER) {
  if (pes_type >= DMX_PES_OTHER) {
   mutex_unlock(&demux->mutex);
   return -EINVAL;
  }

  if (demux->pesfilter[pes_type] &&
      demux->pesfilter[pes_type] != feed) {
   mutex_unlock(&demux->mutex);
   return -EINVAL;
  }

  demux->pesfilter[pes_type] = feed;
  demux->pids[pes_type] = pid;
 }

 dvb_demux_feed_add(feed);

 feed->pid = pid;
 feed->timeout = timeout;
 feed->ts_type = ts_type;
 feed->pes_type = pes_type;

 feed->state = DMX_STATE_READY;
 mutex_unlock(&demux->mutex);

 return 0;
}
