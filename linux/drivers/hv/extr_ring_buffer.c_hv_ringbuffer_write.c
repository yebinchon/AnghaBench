
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hv_ring_buffer_info {int ring_lock; } ;
struct vmbus_channel {int out_full_flag; scalar_t__ rescind; int out_full_first; int out_full_total; struct hv_ring_buffer_info outbound; } ;
struct kvec {int iov_len; int * iov_base; } ;


 int EAGAIN ;
 int ENODEV ;
 int hv_copyto_ringbuffer (struct hv_ring_buffer_info*,int,int *,int) ;
 int hv_get_bytes_to_write (struct hv_ring_buffer_info*) ;
 int hv_get_next_write_location (struct hv_ring_buffer_info*) ;
 int hv_get_ring_bufferindices (struct hv_ring_buffer_info*) ;
 int hv_set_next_write_location (struct hv_ring_buffer_info*,int) ;
 int hv_signal_on_write (int,struct vmbus_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_mb () ;

int hv_ringbuffer_write(struct vmbus_channel *channel,
   const struct kvec *kv_list, u32 kv_count)
{
 int i;
 u32 bytes_avail_towrite;
 u32 totalbytes_towrite = sizeof(u64);
 u32 next_write_location;
 u32 old_write;
 u64 prev_indices;
 unsigned long flags;
 struct hv_ring_buffer_info *outring_info = &channel->outbound;

 if (channel->rescind)
  return -ENODEV;

 for (i = 0; i < kv_count; i++)
  totalbytes_towrite += kv_list[i].iov_len;

 spin_lock_irqsave(&outring_info->ring_lock, flags);

 bytes_avail_towrite = hv_get_bytes_to_write(outring_info);






 if (bytes_avail_towrite <= totalbytes_towrite) {
  ++channel->out_full_total;

  if (!channel->out_full_flag) {
   ++channel->out_full_first;
   channel->out_full_flag = 1;
  }

  spin_unlock_irqrestore(&outring_info->ring_lock, flags);
  return -EAGAIN;
 }

 channel->out_full_flag = 0;


 next_write_location = hv_get_next_write_location(outring_info);

 old_write = next_write_location;

 for (i = 0; i < kv_count; i++) {
  next_write_location = hv_copyto_ringbuffer(outring_info,
           next_write_location,
           kv_list[i].iov_base,
           kv_list[i].iov_len);
 }


 prev_indices = hv_get_ring_bufferindices(outring_info);

 next_write_location = hv_copyto_ringbuffer(outring_info,
          next_write_location,
          &prev_indices,
          sizeof(u64));


 virt_mb();


 hv_set_next_write_location(outring_info, next_write_location);


 spin_unlock_irqrestore(&outring_info->ring_lock, flags);

 hv_signal_on_write(old_write, channel);

 if (channel->rescind)
  return -ENODEV;

 return 0;
}
