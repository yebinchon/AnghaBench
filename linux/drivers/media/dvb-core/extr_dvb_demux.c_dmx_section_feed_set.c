
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int check_crc; } ;
struct TYPE_3__ {TYPE_2__ sec; } ;
struct dvb_demux_feed {int pid; int state; TYPE_1__ feed; struct dvb_demux* demux; } ;
struct dvb_demux {int mutex; } ;
struct dmx_section_feed {int dummy; } ;


 int DMX_STATE_READY ;
 int EINVAL ;
 int ERESTARTSYS ;
 int dvb_demux_feed_add (struct dvb_demux_feed*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dmx_section_feed_set(struct dmx_section_feed *feed,
    u16 pid, int check_crc)
{
 struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;

 if (pid > 0x1fff)
  return -EINVAL;

 if (mutex_lock_interruptible(&dvbdmx->mutex))
  return -ERESTARTSYS;

 dvb_demux_feed_add(dvbdmxfeed);

 dvbdmxfeed->pid = pid;
 dvbdmxfeed->feed.sec.check_crc = check_crc;

 dvbdmxfeed->state = DMX_STATE_READY;
 mutex_unlock(&dvbdmx->mutex);
 return 0;
}
