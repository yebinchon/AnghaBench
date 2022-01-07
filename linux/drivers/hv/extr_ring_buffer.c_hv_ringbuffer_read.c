
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vmpacket_descriptor {int offset8; int len8; int trans_id; } ;
struct vmbus_channel {int dummy; } ;


 int EINVAL ;
 int ENOBUFS ;
 int __hv_pkt_iter_next (struct vmbus_channel*,struct vmpacket_descriptor*) ;
 int hv_pkt_iter_close (struct vmbus_channel*) ;
 struct vmpacket_descriptor* hv_pkt_iter_first (struct vmbus_channel*) ;
 int memcpy (void*,char const*,int) ;
 scalar_t__ unlikely (int) ;

int hv_ringbuffer_read(struct vmbus_channel *channel,
         void *buffer, u32 buflen, u32 *buffer_actual_len,
         u64 *requestid, bool raw)
{
 struct vmpacket_descriptor *desc;
 u32 packetlen, offset;

 if (unlikely(buflen == 0))
  return -EINVAL;

 *buffer_actual_len = 0;
 *requestid = 0;


 desc = hv_pkt_iter_first(channel);
 if (desc == ((void*)0)) {




  return 0;
 }

 offset = raw ? 0 : (desc->offset8 << 3);
 packetlen = (desc->len8 << 3) - offset;
 *buffer_actual_len = packetlen;
 *requestid = desc->trans_id;

 if (unlikely(packetlen > buflen))
  return -ENOBUFS;


 memcpy(buffer, (const char *)desc + offset, packetlen);


 __hv_pkt_iter_next(channel, desc);


 hv_pkt_iter_close(channel);

 return 0;
}
