
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flexcop_device {int dummy; } ;
struct dvb_demux_feed {TYPE_1__* demux; } ;
struct TYPE_2__ {struct flexcop_device* priv; } ;


 int flexcop_pid_feed_control (struct flexcop_device*,struct dvb_demux_feed*,int) ;

__attribute__((used)) static int flexcop_dvb_start_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct flexcop_device *fc = dvbdmxfeed->demux->priv;
 return flexcop_pid_feed_control(fc, dvbdmxfeed, 1);
}
