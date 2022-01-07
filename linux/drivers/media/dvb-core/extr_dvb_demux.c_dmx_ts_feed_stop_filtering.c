
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {scalar_t__ state; struct dvb_demux* demux; } ;
struct dvb_demux {int (* stop_feed ) (struct dvb_demux_feed*) ;int mutex; int lock; } ;
struct dmx_ts_feed {scalar_t__ is_filtering; } ;


 scalar_t__ DMX_STATE_ALLOCATED ;
 scalar_t__ DMX_STATE_GO ;
 int EINVAL ;
 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct dvb_demux_feed*) ;

__attribute__((used)) static int dmx_ts_feed_stop_filtering(struct dmx_ts_feed *ts_feed)
{
 struct dvb_demux_feed *feed = (struct dvb_demux_feed *)ts_feed;
 struct dvb_demux *demux = feed->demux;
 int ret;

 mutex_lock(&demux->mutex);

 if (feed->state < DMX_STATE_GO) {
  mutex_unlock(&demux->mutex);
  return -EINVAL;
 }

 if (!demux->stop_feed) {
  mutex_unlock(&demux->mutex);
  return -ENODEV;
 }

 ret = demux->stop_feed(feed);

 spin_lock_irq(&demux->lock);
 ts_feed->is_filtering = 0;
 feed->state = DMX_STATE_ALLOCATED;
 spin_unlock_irq(&demux->lock);
 mutex_unlock(&demux->mutex);

 return ret;
}
