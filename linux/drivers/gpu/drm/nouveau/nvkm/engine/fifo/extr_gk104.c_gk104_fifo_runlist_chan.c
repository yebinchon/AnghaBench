
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_memory {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct gk104_fifo_chan {TYPE_1__ base; } ;


 int nvkm_wo32 (struct nvkm_memory*,scalar_t__,int) ;

void
gk104_fifo_runlist_chan(struct gk104_fifo_chan *chan,
   struct nvkm_memory *memory, u32 offset)
{
 nvkm_wo32(memory, offset + 0, chan->base.chid);
 nvkm_wo32(memory, offset + 4, 0x00000000);
}
