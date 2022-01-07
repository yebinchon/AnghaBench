
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ring_buffer_mutex; } ;
struct TYPE_3__ {int ring_buffer_mutex; } ;
struct vmbus_channel {TYPE_2__ outbound; TYPE_1__ inbound; } ;


 int mutex_init (int *) ;

void hv_ringbuffer_pre_init(struct vmbus_channel *channel)
{
 mutex_init(&channel->inbound.ring_buffer_mutex);
 mutex_init(&channel->outbound.ring_buffer_mutex);
}
