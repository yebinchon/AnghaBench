
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int callback_event; int percpu_list; int sc_list; int rescind_event; int lock; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int hv_ringbuffer_pre_init (struct vmbus_channel*) ;
 int init_completion (int *) ;
 struct vmbus_channel* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int vmbus_on_event ;

__attribute__((used)) static struct vmbus_channel *alloc_channel(void)
{
 struct vmbus_channel *channel;

 channel = kzalloc(sizeof(*channel), GFP_ATOMIC);
 if (!channel)
  return ((void*)0);

 spin_lock_init(&channel->lock);
 init_completion(&channel->rescind_event);

 INIT_LIST_HEAD(&channel->sc_list);
 INIT_LIST_HEAD(&channel->percpu_list);

 tasklet_init(&channel->callback_event,
       vmbus_on_event, (unsigned long)channel);

 hv_ringbuffer_pre_init(channel);

 return channel;
}
