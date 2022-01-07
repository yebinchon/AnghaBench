
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {int index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
struct nv04_fifo_chan {int * engn; } ;


 struct nv04_fifo_chan* nv04_fifo_chan (struct nvkm_fifo_chan*) ;
 int nv40_fifo_dma_engine (struct nvkm_engine*,int *,int *) ;
 int nvkm_object_bind (struct nvkm_object*,int *,int ,int *) ;

__attribute__((used)) static int
nv40_fifo_dma_engine_ctor(struct nvkm_fifo_chan *base,
     struct nvkm_engine *engine,
     struct nvkm_object *object)
{
 struct nv04_fifo_chan *chan = nv04_fifo_chan(base);
 const int engn = engine->subdev.index;
 u32 reg, ctx;

 if (!nv40_fifo_dma_engine(engine, &reg, &ctx))
  return 0;

 return nvkm_object_bind(object, ((void*)0), 0, &chan->engn[engn]);
}
