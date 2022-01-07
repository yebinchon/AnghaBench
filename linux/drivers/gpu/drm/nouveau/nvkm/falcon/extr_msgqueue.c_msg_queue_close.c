
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_msgqueue_queue {int mutex; int position; int tail_reg; } ;
struct nvkm_msgqueue {struct nvkm_falcon* falcon; } ;
struct nvkm_falcon {int dummy; } ;


 int mutex_unlock (int *) ;
 int nvkm_falcon_wr32 (struct nvkm_falcon*,int ,int ) ;

__attribute__((used)) static void
msg_queue_close(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue,
  bool commit)
{
 struct nvkm_falcon *falcon = priv->falcon;

 if (commit)
  nvkm_falcon_wr32(falcon, queue->tail_reg, queue->position);

 mutex_unlock(&queue->mutex);
}
