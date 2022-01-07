
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vmpacket_descriptor {int len8; } ;
struct hv_ring_buffer_info {scalar_t__ ring_datasize; scalar_t__ priv_read_index; } ;
struct vmbus_channel {struct hv_ring_buffer_info inbound; } ;


 scalar_t__ VMBUS_PKT_TRAILER ;
 struct vmpacket_descriptor* hv_pkt_iter_first (struct vmbus_channel*) ;

struct vmpacket_descriptor *
__hv_pkt_iter_next(struct vmbus_channel *channel,
     const struct vmpacket_descriptor *desc)
{
 struct hv_ring_buffer_info *rbi = &channel->inbound;
 u32 packetlen = desc->len8 << 3;
 u32 dsize = rbi->ring_datasize;


 rbi->priv_read_index += packetlen + VMBUS_PKT_TRAILER;
 if (rbi->priv_read_index >= dsize)
  rbi->priv_read_index -= dsize;


 return hv_pkt_iter_first(channel);
}
