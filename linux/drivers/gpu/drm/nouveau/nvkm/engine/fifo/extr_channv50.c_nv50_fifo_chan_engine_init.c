
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct nvkm_gpuobj {scalar_t__ addr; scalar_t__ size; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {size_t index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
struct nv50_fifo_chan {int eng; struct nvkm_gpuobj** engn; } ;


 int lower_32_bits (scalar_t__) ;
 struct nv50_fifo_chan* nv50_fifo_chan (struct nvkm_fifo_chan*) ;
 int nv50_fifo_chan_engine_addr (struct nvkm_engine*) ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;
 int nvkm_wo32 (int ,int,int) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int
nv50_fifo_chan_engine_init(struct nvkm_fifo_chan *base,
      struct nvkm_engine *engine)
{
 struct nv50_fifo_chan *chan = nv50_fifo_chan(base);
 struct nvkm_gpuobj *engn = chan->engn[engine->subdev.index];
 u64 limit, start;
 int offset;

 offset = nv50_fifo_chan_engine_addr(engine);
 if (offset < 0)
  return 0;
 limit = engn->addr + engn->size - 1;
 start = engn->addr;

 nvkm_kmap(chan->eng);
 nvkm_wo32(chan->eng, offset + 0x00, 0x00190000);
 nvkm_wo32(chan->eng, offset + 0x04, lower_32_bits(limit));
 nvkm_wo32(chan->eng, offset + 0x08, lower_32_bits(start));
 nvkm_wo32(chan->eng, offset + 0x0c, upper_32_bits(limit) << 24 |
         upper_32_bits(start));
 nvkm_wo32(chan->eng, offset + 0x10, 0x00000000);
 nvkm_wo32(chan->eng, offset + 0x14, 0x00000000);
 nvkm_done(chan->eng);
 return 0;
}
