
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {scalar_t__ state; int pid; } ;
struct dvb_demux {int mutex; } ;
struct dmx_section_feed {int dummy; } ;
struct dmx_demux {int dummy; } ;


 scalar_t__ DMX_STATE_FREE ;
 int EINVAL ;
 int dvb_demux_feed_del (struct dvb_demux_feed*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dvbdmx_release_section_feed(struct dmx_demux *demux,
           struct dmx_section_feed *feed)
{
 struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
 struct dvb_demux *dvbdmx = (struct dvb_demux *)demux;

 mutex_lock(&dvbdmx->mutex);

 if (dvbdmxfeed->state == DMX_STATE_FREE) {
  mutex_unlock(&dvbdmx->mutex);
  return -EINVAL;
 }
 dvbdmxfeed->state = DMX_STATE_FREE;

 dvb_demux_feed_del(dvbdmxfeed);

 dvbdmxfeed->pid = 0xffff;

 mutex_unlock(&dvbdmx->mutex);
 return 0;
}
