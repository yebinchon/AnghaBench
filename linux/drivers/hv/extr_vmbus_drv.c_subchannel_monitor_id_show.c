
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int monitorid; } ;
struct vmbus_channel {TYPE_1__ offermsg; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t subchannel_monitor_id_show(struct vmbus_channel *channel,
       char *buf)
{
 return sprintf(buf, "%u\n", channel->offermsg.monitorid);
}
