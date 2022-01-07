
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fifo {TYPE_1__* func; } ;
struct TYPE_2__ {void (* pause ) (struct nvkm_fifo*,unsigned long*) ;} ;


 void stub1 (struct nvkm_fifo*,unsigned long*) ;

void
nvkm_fifo_pause(struct nvkm_fifo *fifo, unsigned long *flags)
{
 return fifo->func->pause(fifo, flags);
}
