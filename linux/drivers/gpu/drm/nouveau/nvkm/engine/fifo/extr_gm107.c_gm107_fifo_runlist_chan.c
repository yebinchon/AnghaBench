
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_memory {int dummy; } ;
struct TYPE_4__ {int chid; TYPE_1__* inst; } ;
struct gk104_fifo_chan {TYPE_2__ base; } ;
struct TYPE_3__ {int addr; } ;


 int nvkm_wo32 (struct nvkm_memory*,scalar_t__,int) ;

__attribute__((used)) static void
gm107_fifo_runlist_chan(struct gk104_fifo_chan *chan,
   struct nvkm_memory *memory, u32 offset)
{
 nvkm_wo32(memory, offset + 0, chan->base.chid);
 nvkm_wo32(memory, offset + 4, chan->base.inst->addr >> 12);
}
