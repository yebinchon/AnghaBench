
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_msgqueue {TYPE_1__* func; } ;
struct TYPE_2__ {int (* dtor ) (struct nvkm_msgqueue*) ;} ;


 int stub1 (struct nvkm_msgqueue*) ;

void
nvkm_msgqueue_del(struct nvkm_msgqueue **queue)
{
 if (*queue) {
  (*queue)->func->dtor(*queue);
  *queue = ((void*)0);
 }
}
