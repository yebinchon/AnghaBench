
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hv_ring_buffer_info {TYPE_1__* ring_buffer; } ;
struct vmbus_channel {int intr_out_empty; struct hv_ring_buffer_info outbound; } ;
struct TYPE_2__ {int read_index; int interrupt_mask; } ;


 scalar_t__ READ_ONCE (int ) ;
 int virt_mb () ;
 int virt_rmb () ;
 int vmbus_setevent (struct vmbus_channel*) ;

__attribute__((used)) static void hv_signal_on_write(u32 old_write, struct vmbus_channel *channel)
{
 struct hv_ring_buffer_info *rbi = &channel->outbound;

 virt_mb();
 if (READ_ONCE(rbi->ring_buffer->interrupt_mask))
  return;


 virt_rmb();




 if (old_write == READ_ONCE(rbi->ring_buffer->read_index)) {
  ++channel->intr_out_empty;
  vmbus_setevent(channel);
 }
}
