
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_ring_buffer_info {int ring_buffer_mutex; TYPE_1__* ring_buffer; } ;
struct vmbus_channel {struct hv_ring_buffer_info outbound; } ;
typedef int ssize_t ;
struct TYPE_2__ {int interrupt_mask; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t out_mask_show(struct vmbus_channel *channel, char *buf)
{
 struct hv_ring_buffer_info *rbi = &channel->outbound;
 ssize_t ret;

 mutex_lock(&rbi->ring_buffer_mutex);
 if (!rbi->ring_buffer) {
  mutex_unlock(&rbi->ring_buffer_mutex);
  return -EINVAL;
 }

 ret = sprintf(buf, "%u\n", rbi->ring_buffer->interrupt_mask);
 mutex_unlock(&rbi->ring_buffer_mutex);
 return ret;
}
