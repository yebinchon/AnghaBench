
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int kobj; int callback_event; } ;


 int kobject_put (int *) ;
 int tasklet_kill (int *) ;
 int vmbus_remove_channel_attr_group (struct vmbus_channel*) ;

__attribute__((used)) static void free_channel(struct vmbus_channel *channel)
{
 tasklet_kill(&channel->callback_event);
 vmbus_remove_channel_attr_group(channel);

 kobject_put(&channel->kobj);
}
