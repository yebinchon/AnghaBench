
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {size_t index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
struct nv04_fifo_chan {int * engn; } ;


 struct nv04_fifo_chan* nv04_fifo_chan (struct nvkm_fifo_chan*) ;
 int nvkm_gpuobj_del (int *) ;

__attribute__((used)) static void
nv40_fifo_dma_engine_dtor(struct nvkm_fifo_chan *base,
     struct nvkm_engine *engine)
{
 struct nv04_fifo_chan *chan = nv04_fifo_chan(base);
 nvkm_gpuobj_del(&chan->engn[engine->subdev.index]);
}
