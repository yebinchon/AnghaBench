
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_bar {TYPE_1__* func; } ;
struct TYPE_2__ {int (* flush ) (struct nvkm_bar*) ;} ;


 int stub1 (struct nvkm_bar*) ;

void
nvkm_bar_flush(struct nvkm_bar *bar)
{
 if (bar && bar->func->flush)
  bar->func->flush(bar);
}
