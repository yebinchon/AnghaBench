
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_6__ {size_t index; } ;
struct nvkm_engine {TYPE_3__ subdev; } ;
struct TYPE_4__ {int vmm; } ;
struct gk104_fifo_chan {TYPE_2__* engn; TYPE_1__ base; } ;
struct TYPE_5__ {int inst; int vma; } ;


 struct gk104_fifo_chan* gk104_fifo_chan (struct nvkm_fifo_chan*) ;
 int nvkm_gpuobj_del (int *) ;
 int nvkm_vmm_put (int ,int *) ;

void
gk104_fifo_gpfifo_engine_dtor(struct nvkm_fifo_chan *base,
         struct nvkm_engine *engine)
{
 struct gk104_fifo_chan *chan = gk104_fifo_chan(base);
 nvkm_vmm_put(chan->base.vmm, &chan->engn[engine->subdev.index].vma);
 nvkm_gpuobj_del(&chan->engn[engine->subdev.index].inst);
}
