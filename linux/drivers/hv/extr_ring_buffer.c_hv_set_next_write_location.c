
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hv_ring_buffer_info {TYPE_1__* ring_buffer; } ;
struct TYPE_2__ {int write_index; } ;



__attribute__((used)) static inline void
hv_set_next_write_location(struct hv_ring_buffer_info *ring_info,
       u32 next_write_location)
{
 ring_info->ring_buffer->write_index = next_write_location;
}
