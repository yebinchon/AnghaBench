
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct hv_ring_buffer_info {void* priv_read_index; TYPE_1__* ring_buffer; } ;
struct TYPE_2__ {void* read_index; } ;



__attribute__((used)) static inline void
hv_set_next_read_location(struct hv_ring_buffer_info *ring_info,
      u32 next_read_location)
{
 ring_info->ring_buffer->read_index = next_read_location;
 ring_info->priv_read_index = next_read_location;
}
