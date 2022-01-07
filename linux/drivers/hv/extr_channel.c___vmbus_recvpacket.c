
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vmbus_channel {int dummy; } ;


 int hv_ringbuffer_read (struct vmbus_channel*,void*,int ,int *,int *,int) ;

__attribute__((used)) static inline int
__vmbus_recvpacket(struct vmbus_channel *channel, void *buffer,
     u32 bufferlen, u32 *buffer_actual_len, u64 *requestid,
     bool raw)
{
 return hv_ringbuffer_read(channel, buffer, bufferlen,
      buffer_actual_len, requestid, raw);

}
