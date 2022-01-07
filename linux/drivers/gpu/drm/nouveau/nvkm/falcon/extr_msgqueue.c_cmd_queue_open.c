
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_msgqueue_queue {int head_reg; int position; int mutex; } ;
struct nvkm_msgqueue {struct nvkm_falcon* falcon; } ;
struct nvkm_falcon {struct nvkm_subdev* owner; } ;


 int EAGAIN ;
 int cmd_queue_has_room (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*,int ,int*) ;
 int cmd_queue_rewind (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_error (struct nvkm_subdev const*,char*) ;
 int nvkm_falcon_rd32 (struct nvkm_falcon*,int ) ;

__attribute__((used)) static int
cmd_queue_open(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue,
        u32 size)
{
 struct nvkm_falcon *falcon = priv->falcon;
 const struct nvkm_subdev *subdev = priv->falcon->owner;
 bool rewind = 0;

 mutex_lock(&queue->mutex);

 if (!cmd_queue_has_room(priv, queue, size, &rewind)) {
  nvkm_error(subdev, "queue full\n");
  mutex_unlock(&queue->mutex);
  return -EAGAIN;
 }

 queue->position = nvkm_falcon_rd32(falcon, queue->head_reg);

 if (rewind)
  cmd_queue_rewind(priv, queue);

 return 0;
}
