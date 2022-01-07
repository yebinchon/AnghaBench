
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ seclen; scalar_t__ secbufp; int secbuf_base; int secbuf; scalar_t__ tsfeedp; } ;
struct TYPE_4__ {TYPE_1__ sec; } ;
struct dvb_demux_feed {int state; TYPE_2__ feed; int filter; struct dvb_demux* demux; } ;
struct dvb_demux {int (* start_feed ) (struct dvb_demux_feed*) ;int mutex; int lock; } ;
struct dmx_section_feed {int is_filtering; } ;


 int DMX_STATE_GO ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int prepare_secfilters (struct dvb_demux_feed*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct dvb_demux_feed*) ;

__attribute__((used)) static int dmx_section_feed_start_filtering(struct dmx_section_feed *feed)
{
 struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
 int ret;

 if (mutex_lock_interruptible(&dvbdmx->mutex))
  return -ERESTARTSYS;

 if (feed->is_filtering) {
  mutex_unlock(&dvbdmx->mutex);
  return -EBUSY;
 }

 if (!dvbdmxfeed->filter) {
  mutex_unlock(&dvbdmx->mutex);
  return -EINVAL;
 }

 dvbdmxfeed->feed.sec.tsfeedp = 0;
 dvbdmxfeed->feed.sec.secbuf = dvbdmxfeed->feed.sec.secbuf_base;
 dvbdmxfeed->feed.sec.secbufp = 0;
 dvbdmxfeed->feed.sec.seclen = 0;

 if (!dvbdmx->start_feed) {
  mutex_unlock(&dvbdmx->mutex);
  return -ENODEV;
 }

 prepare_secfilters(dvbdmxfeed);

 if ((ret = dvbdmx->start_feed(dvbdmxfeed)) < 0) {
  mutex_unlock(&dvbdmx->mutex);
  return ret;
 }

 spin_lock_irq(&dvbdmx->lock);
 feed->is_filtering = 1;
 dvbdmxfeed->state = DMX_STATE_GO;
 spin_unlock_irq(&dvbdmx->lock);

 mutex_unlock(&dvbdmx->mutex);
 return 0;
}
