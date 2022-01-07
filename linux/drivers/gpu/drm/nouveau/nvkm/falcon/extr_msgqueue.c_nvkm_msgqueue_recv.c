
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_msgqueue {TYPE_2__* func; TYPE_1__* falcon; } ;
struct TYPE_4__ {int (* recv ) (struct nvkm_msgqueue*) ;} ;
struct TYPE_3__ {struct nvkm_subdev* owner; } ;


 int nvkm_warn (struct nvkm_subdev const*,char*) ;
 int stub1 (struct nvkm_msgqueue*) ;

void
nvkm_msgqueue_recv(struct nvkm_msgqueue *queue)
{
 if (!queue->func || !queue->func->recv) {
  const struct nvkm_subdev *subdev = queue->falcon->owner;

  nvkm_warn(subdev, "missing msgqueue recv function\n");
  return;
 }

 queue->func->recv(queue);
}
