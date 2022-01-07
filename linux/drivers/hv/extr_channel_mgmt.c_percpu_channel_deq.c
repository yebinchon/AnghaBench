
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int percpu_list; } ;


 int list_del_rcu (int *) ;

__attribute__((used)) static void percpu_channel_deq(void *arg)
{
 struct vmbus_channel *channel = arg;

 list_del_rcu(&channel->percpu_list);
}
