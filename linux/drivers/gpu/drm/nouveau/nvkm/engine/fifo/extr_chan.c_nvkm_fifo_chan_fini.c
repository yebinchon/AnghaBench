
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {TYPE_1__* func; } ;
struct TYPE_2__ {int (* fini ) (struct nvkm_fifo_chan*) ;} ;


 struct nvkm_fifo_chan* nvkm_fifo_chan (struct nvkm_object*) ;
 int stub1 (struct nvkm_fifo_chan*) ;

__attribute__((used)) static int
nvkm_fifo_chan_fini(struct nvkm_object *object, bool suspend)
{
 struct nvkm_fifo_chan *chan = nvkm_fifo_chan(object);
 chan->func->fini(chan);
 return 0;
}
