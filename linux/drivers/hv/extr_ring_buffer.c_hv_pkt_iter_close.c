
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hv_ring_buffer_info {scalar_t__ priv_read_index; TYPE_2__* ring_buffer; } ;
struct vmbus_channel {int intr_in_full; struct hv_ring_buffer_info inbound; } ;
struct TYPE_3__ {int feat_pending_send_sz; } ;
struct TYPE_4__ {scalar_t__ read_index; int pending_send_sz; TYPE_1__ feature_bits; } ;


 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ hv_get_bytes_to_write (struct hv_ring_buffer_info*) ;
 scalar_t__ hv_pkt_iter_bytes_read (struct hv_ring_buffer_info*,scalar_t__) ;
 int virt_mb () ;
 int virt_rmb () ;
 int vmbus_setevent (struct vmbus_channel*) ;

void hv_pkt_iter_close(struct vmbus_channel *channel)
{
 struct hv_ring_buffer_info *rbi = &channel->inbound;
 u32 curr_write_sz, pending_sz, bytes_read, start_read_index;






 virt_rmb();
 start_read_index = rbi->ring_buffer->read_index;
 rbi->ring_buffer->read_index = rbi->priv_read_index;






 if (!rbi->ring_buffer->feature_bits.feat_pending_send_sz)
  return;
 virt_mb();






 pending_sz = READ_ONCE(rbi->ring_buffer->pending_send_sz);
 if (!pending_sz)
  return;





 virt_rmb();
 curr_write_sz = hv_get_bytes_to_write(rbi);
 bytes_read = hv_pkt_iter_bytes_read(rbi, start_read_index);
 if (curr_write_sz - bytes_read > pending_sz)
  return;





 if (curr_write_sz <= pending_sz)
  return;

 ++channel->intr_in_full;
 vmbus_setevent(channel);
}
