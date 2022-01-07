
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hv_ring_buffer_info {int ring_datasize; } ;



__attribute__((used)) static inline u32
hv_get_ring_buffersize(const struct hv_ring_buffer_info *ring_info)
{
 return ring_info->ring_datasize;
}
