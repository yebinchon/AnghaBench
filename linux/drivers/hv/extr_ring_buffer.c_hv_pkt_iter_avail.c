
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hv_ring_buffer_info {scalar_t__ priv_read_index; scalar_t__ ring_datasize; TYPE_1__* ring_buffer; } ;
struct TYPE_2__ {int write_index; } ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static u32 hv_pkt_iter_avail(const struct hv_ring_buffer_info *rbi)
{
 u32 priv_read_loc = rbi->priv_read_index;
 u32 write_loc = READ_ONCE(rbi->ring_buffer->write_index);

 if (write_loc >= priv_read_loc)
  return write_loc - priv_read_loc;
 else
  return (rbi->ring_datasize - priv_read_loc) + write_loc;
}
