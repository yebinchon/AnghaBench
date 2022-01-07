
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_fifo {int nr; TYPE_1__* func; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {int (* info ) (struct nvkm_fifo*,int,int*) ;} ;


 int ENOSYS ;

 struct nvkm_fifo* nvkm_fifo (struct nvkm_engine*) ;
 int stub1 (struct nvkm_fifo*,int,int*) ;

__attribute__((used)) static int
nvkm_fifo_info(struct nvkm_engine *engine, u64 mthd, u64 *data)
{
 struct nvkm_fifo *fifo = nvkm_fifo(engine);
 switch (mthd) {
 case 128: *data = fifo->nr; return 0;
 default:
  if (fifo->func->info)
   return fifo->func->info(fifo, mthd, data);
  break;
 }
 return -ENOSYS;
}
