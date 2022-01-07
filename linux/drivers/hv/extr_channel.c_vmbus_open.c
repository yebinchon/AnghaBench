
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmbus_channel {int dummy; } ;


 int __vmbus_open (struct vmbus_channel*,void*,int ,void (*) (void*),void*) ;
 int vmbus_alloc_ring (struct vmbus_channel*,int ,int ) ;
 int vmbus_free_ring (struct vmbus_channel*) ;

int vmbus_open(struct vmbus_channel *newchannel,
        u32 send_ringbuffer_size, u32 recv_ringbuffer_size,
        void *userdata, u32 userdatalen,
        void (*onchannelcallback)(void *context), void *context)
{
 int err;

 err = vmbus_alloc_ring(newchannel, send_ringbuffer_size,
          recv_ringbuffer_size);
 if (err)
  return err;

 err = __vmbus_open(newchannel, userdata, userdatalen,
      onchannelcallback, context);
 if (err)
  vmbus_free_ring(newchannel);

 return err;
}
