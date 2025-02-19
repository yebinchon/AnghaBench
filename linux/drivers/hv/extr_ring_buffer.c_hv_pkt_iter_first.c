
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmpacket_descriptor {int len8; } ;
struct hv_ring_buffer_info {int priv_read_index; } ;
struct vmbus_channel {struct hv_ring_buffer_info inbound; } ;


 struct vmpacket_descriptor* hv_get_ring_buffer (struct hv_ring_buffer_info*) ;
 int hv_pkt_iter_avail (struct hv_ring_buffer_info*) ;
 int prefetch (char*) ;

struct vmpacket_descriptor *hv_pkt_iter_first(struct vmbus_channel *channel)
{
 struct hv_ring_buffer_info *rbi = &channel->inbound;
 struct vmpacket_descriptor *desc;

 if (hv_pkt_iter_avail(rbi) < sizeof(struct vmpacket_descriptor))
  return ((void*)0);

 desc = hv_get_ring_buffer(rbi) + rbi->priv_read_index;
 if (desc)
  prefetch((char *)desc + (desc->len8 << 3));

 return desc;
}
