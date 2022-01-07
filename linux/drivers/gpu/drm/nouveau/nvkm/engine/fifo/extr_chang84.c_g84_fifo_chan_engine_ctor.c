
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {int index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
struct nv50_fifo_chan {int * engn; } ;


 scalar_t__ g84_fifo_chan_engine_addr (struct nvkm_engine*) ;
 struct nv50_fifo_chan* nv50_fifo_chan (struct nvkm_fifo_chan*) ;
 int nvkm_object_bind (struct nvkm_object*,int *,int ,int *) ;

__attribute__((used)) static int
g84_fifo_chan_engine_ctor(struct nvkm_fifo_chan *base,
     struct nvkm_engine *engine,
     struct nvkm_object *object)
{
 struct nv50_fifo_chan *chan = nv50_fifo_chan(base);
 int engn = engine->subdev.index;

 if (g84_fifo_chan_engine_addr(engine) < 0)
  return 0;

 return nvkm_object_bind(object, ((void*)0), 0, &chan->engn[engn]);
}
