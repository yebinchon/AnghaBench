
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {size_t index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
struct nv50_fifo_chan {int * engn; } ;


 struct nv50_fifo_chan* nv50_fifo_chan (struct nvkm_fifo_chan*) ;
 int nvkm_gpuobj_del (int *) ;

void
nv50_fifo_chan_engine_dtor(struct nvkm_fifo_chan *base,
      struct nvkm_engine *engine)
{
 struct nv50_fifo_chan *chan = nv50_fifo_chan(base);
 nvkm_gpuobj_del(&chan->engn[engine->subdev.index]);
}
