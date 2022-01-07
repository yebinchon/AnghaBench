
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_msgqueue {TYPE_2__* func; } ;
struct TYPE_4__ {TYPE_1__* init_func; } ;
struct TYPE_3__ {int (* gen_cmdline ) (struct nvkm_msgqueue*,void*) ;} ;


 int stub1 (struct nvkm_msgqueue*,void*) ;

void
nvkm_msgqueue_write_cmdline(struct nvkm_msgqueue *queue, void *buf)
{
 if (!queue || !queue->func || !queue->func->init_func)
  return;

 queue->func->init_func->gen_cmdline(queue, buf);
}
