
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;


 scalar_t__ vmbus_disconnect_ring (struct vmbus_channel*) ;
 int vmbus_free_ring (struct vmbus_channel*) ;

void vmbus_close(struct vmbus_channel *channel)
{
 if (vmbus_disconnect_ring(channel) == 0)
  vmbus_free_ring(channel);
}
