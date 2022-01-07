
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct hv_ring_buffer_info {int ring_buffer_mutex; TYPE_1__* ring_buffer; } ;
struct hv_ring_buffer_debug_info {int current_interrupt_mask; int current_write_index; int current_read_index; void* bytes_avail_towrite; void* bytes_avail_toread; } ;
struct TYPE_2__ {int interrupt_mask; int write_index; int read_index; } ;


 int EINVAL ;
 int hv_get_ringbuffer_availbytes (struct hv_ring_buffer_info*,void**,void**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hv_ringbuffer_get_debuginfo(struct hv_ring_buffer_info *ring_info,
    struct hv_ring_buffer_debug_info *debug_info)
{
 u32 bytes_avail_towrite;
 u32 bytes_avail_toread;

 mutex_lock(&ring_info->ring_buffer_mutex);

 if (!ring_info->ring_buffer) {
  mutex_unlock(&ring_info->ring_buffer_mutex);
  return -EINVAL;
 }

 hv_get_ringbuffer_availbytes(ring_info,
         &bytes_avail_toread,
         &bytes_avail_towrite);
 debug_info->bytes_avail_toread = bytes_avail_toread;
 debug_info->bytes_avail_towrite = bytes_avail_towrite;
 debug_info->current_read_index = ring_info->ring_buffer->read_index;
 debug_info->current_write_index = ring_info->ring_buffer->write_index;
 debug_info->current_interrupt_mask
  = ring_info->ring_buffer->interrupt_mask;
 mutex_unlock(&ring_info->ring_buffer_mutex);

 return 0;
}
