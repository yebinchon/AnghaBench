
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fifo {TYPE_1__* func; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {int (* fini ) (struct nvkm_fifo*) ;} ;


 struct nvkm_fifo* nvkm_fifo (struct nvkm_engine*) ;
 int stub1 (struct nvkm_fifo*) ;

__attribute__((used)) static int
nvkm_fifo_fini(struct nvkm_engine *engine, bool suspend)
{
 struct nvkm_fifo *fifo = nvkm_fifo(engine);
 if (fifo->func->fini)
  fifo->func->fini(fifo);
 return 0;
}
