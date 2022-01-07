
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {scalar_t__ target_cpu; int callback_event; int * sc_creation_callback; } ;


 scalar_t__ get_cpu () ;
 int put_cpu () ;
 int reset_channel_cb (struct vmbus_channel*) ;
 int smp_call_function_single (scalar_t__,int (*) (struct vmbus_channel*),struct vmbus_channel*,int) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

void vmbus_reset_channel_cb(struct vmbus_channel *channel)
{







 tasklet_disable(&channel->callback_event);

 channel->sc_creation_callback = ((void*)0);


 if (channel->target_cpu != get_cpu()) {
  put_cpu();
  smp_call_function_single(channel->target_cpu, reset_channel_cb,
      channel, 1);
 } else {
  reset_channel_cb(channel);
  put_cpu();
 }


 tasklet_enable(&channel->callback_event);
}
