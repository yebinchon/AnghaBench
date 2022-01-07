
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int device_obj; int rescind; int probe_done; } ;


 int BUG_ON (int) ;
 int READ_ONCE (int ) ;
 int is_hvsock_channel (struct vmbus_channel*) ;
 int msleep (int) ;
 int vmbus_device_unregister (int ) ;

void vmbus_hvsock_device_unregister(struct vmbus_channel *channel)
{
 BUG_ON(!is_hvsock_channel(channel));


 while (!READ_ONCE(channel->probe_done) || !READ_ONCE(channel->rescind))
  msleep(1);

 vmbus_device_unregister(channel->device_obj);
}
