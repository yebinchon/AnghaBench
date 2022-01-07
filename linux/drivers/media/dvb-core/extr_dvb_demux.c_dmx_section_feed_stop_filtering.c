
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {int state; struct dvb_demux* demux; } ;
struct dvb_demux {int (* stop_feed ) (struct dvb_demux_feed*) ;int mutex; int lock; } ;
struct dmx_section_feed {scalar_t__ is_filtering; } ;


 int DMX_STATE_READY ;
 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct dvb_demux_feed*) ;

__attribute__((used)) static int dmx_section_feed_stop_filtering(struct dmx_section_feed *feed)
{
 struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
 int ret;

 mutex_lock(&dvbdmx->mutex);

 if (!dvbdmx->stop_feed) {
  mutex_unlock(&dvbdmx->mutex);
  return -ENODEV;
 }

 ret = dvbdmx->stop_feed(dvbdmxfeed);

 spin_lock_irq(&dvbdmx->lock);
 dvbdmxfeed->state = DMX_STATE_READY;
 feed->is_filtering = 0;
 spin_unlock_irq(&dvbdmx->lock);

 mutex_unlock(&dvbdmx->mutex);
 return ret;
}
