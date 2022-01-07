
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_gpuobj {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {struct nvkm_gpuobj* inst; } ;
struct gk104_fifo_chan {TYPE_1__ base; } ;


 struct gk104_fifo_chan* gk104_fifo_chan (struct nvkm_fifo_chan*) ;
 int gk104_fifo_gpfifo_engine_addr (struct nvkm_engine*) ;
 int gk104_fifo_gpfifo_kick (struct gk104_fifo_chan*) ;
 int nvkm_done (struct nvkm_gpuobj*) ;
 int nvkm_kmap (struct nvkm_gpuobj*) ;
 int nvkm_wo32 (struct nvkm_gpuobj*,int,int) ;

__attribute__((used)) static int
gk104_fifo_gpfifo_engine_fini(struct nvkm_fifo_chan *base,
         struct nvkm_engine *engine, bool suspend)
{
 struct gk104_fifo_chan *chan = gk104_fifo_chan(base);
 struct nvkm_gpuobj *inst = chan->base.inst;
 u32 offset = gk104_fifo_gpfifo_engine_addr(engine);
 int ret;

 ret = gk104_fifo_gpfifo_kick(chan);
 if (ret && suspend)
  return ret;

 if (offset) {
  nvkm_kmap(inst);
  nvkm_wo32(inst, (offset & 0xffff) + 0x00, 0x00000000);
  nvkm_wo32(inst, (offset & 0xffff) + 0x04, 0x00000000);
  if ((offset >>= 16)) {
   nvkm_wo32(inst, offset + 0x00, 0x00000000);
   nvkm_wo32(inst, offset + 0x04, 0x00000000);
  }
  nvkm_done(inst);
 }

 return ret;
}
