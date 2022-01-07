
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int * monitor_pages; } ;


 int channel_pending (struct vmbus_channel*,int ) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__ vmbus_connection ;

__attribute__((used)) static ssize_t channel_pending_show(struct vmbus_channel *channel,
        char *buf)
{
 return sprintf(buf, "%d\n",
         channel_pending(channel,
           vmbus_connection.monitor_pages[1]));
}
