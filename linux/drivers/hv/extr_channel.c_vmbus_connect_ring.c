
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;


 int __vmbus_open (struct vmbus_channel*,int *,int ,void (*) (void*),void*) ;

int vmbus_connect_ring(struct vmbus_channel *newchannel,
         void (*onchannelcallback)(void *context), void *context)
{
 return __vmbus_open(newchannel, ((void*)0), 0, onchannelcallback, context);
}
