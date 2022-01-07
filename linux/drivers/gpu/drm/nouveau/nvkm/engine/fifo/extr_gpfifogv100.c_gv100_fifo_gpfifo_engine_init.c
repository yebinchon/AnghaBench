
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_gpuobj {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_8__ {size_t index; } ;
struct nvkm_engine {TYPE_4__ subdev; } ;
struct TYPE_7__ {struct nvkm_gpuobj* inst; } ;
struct gk104_fifo_chan {TYPE_2__* engn; TYPE_3__ base; } ;
struct TYPE_6__ {TYPE_1__* vma; } ;
struct TYPE_5__ {int addr; } ;


 size_t NVKM_ENGINE_CE0 ;
 size_t NVKM_ENGINE_CE_LAST ;
 struct gk104_fifo_chan* gk104_fifo_chan (struct nvkm_fifo_chan*) ;
 int gv100_fifo_gpfifo_engine_valid (struct gk104_fifo_chan*,int,int) ;
 int lower_32_bits (int ) ;
 int nvkm_done (struct nvkm_gpuobj*) ;
 int nvkm_kmap (struct nvkm_gpuobj*) ;
 int nvkm_wo32 (struct nvkm_gpuobj*,int,int) ;
 int upper_32_bits (int ) ;

int
gv100_fifo_gpfifo_engine_init(struct nvkm_fifo_chan *base,
         struct nvkm_engine *engine)
{
 struct gk104_fifo_chan *chan = gk104_fifo_chan(base);
 struct nvkm_gpuobj *inst = chan->base.inst;
 u64 addr;

 if (engine->subdev.index >= NVKM_ENGINE_CE0 &&
     engine->subdev.index <= NVKM_ENGINE_CE_LAST)
  return 0;

 addr = chan->engn[engine->subdev.index].vma->addr;
 nvkm_kmap(inst);
 nvkm_wo32(inst, 0x210, lower_32_bits(addr) | 0x00000004);
 nvkm_wo32(inst, 0x214, upper_32_bits(addr));
 nvkm_done(inst);

 return gv100_fifo_gpfifo_engine_valid(chan, 0, 1);
}
