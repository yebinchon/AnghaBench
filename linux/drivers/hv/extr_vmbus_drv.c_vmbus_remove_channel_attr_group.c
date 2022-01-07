
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int kobj; } ;


 int sysfs_remove_group (int *,int *) ;
 int vmbus_chan_group ;

void vmbus_remove_channel_attr_group(struct vmbus_channel *channel)
{
 sysfs_remove_group(&channel->kobj, &vmbus_chan_group);
}
