
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_fifo_cgrp {int chan_nr; int id; } ;


 int nvkm_wo32 (struct nvkm_memory*,scalar_t__,int) ;

void
gv100_fifo_runlist_cgrp(struct nvkm_fifo_cgrp *cgrp,
   struct nvkm_memory *memory, u32 offset)
{
 nvkm_wo32(memory, offset + 0x0, (128 << 24) | (3 << 16) | 0x00000001);
 nvkm_wo32(memory, offset + 0x4, cgrp->chan_nr);
 nvkm_wo32(memory, offset + 0x8, cgrp->id);
 nvkm_wo32(memory, offset + 0xc, 0x00000000);
}
