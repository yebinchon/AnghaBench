
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_fifo_cgrp {int chan_nr; int id; } ;


 int nvkm_wo32 (struct nvkm_memory*,scalar_t__,int) ;

void
gk110_fifo_runlist_cgrp(struct nvkm_fifo_cgrp *cgrp,
   struct nvkm_memory *memory, u32 offset)
{
 nvkm_wo32(memory, offset + 0, (cgrp->chan_nr << 26) | (128 << 18) |
          (3 << 14) | 0x00002000 | cgrp->id);
 nvkm_wo32(memory, offset + 4, 0x00000000);
}
