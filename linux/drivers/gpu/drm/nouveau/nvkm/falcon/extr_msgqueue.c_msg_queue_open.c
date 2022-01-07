
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_msgqueue_queue {int tail_reg; int position; int mutex; } ;
struct nvkm_msgqueue {struct nvkm_falcon* falcon; } ;
struct nvkm_falcon {int dummy; } ;


 int mutex_lock (int *) ;
 int nvkm_falcon_rd32 (struct nvkm_falcon*,int ) ;

__attribute__((used)) static int
msg_queue_open(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue)
{
 struct nvkm_falcon *falcon = priv->falcon;

 mutex_lock(&queue->mutex);

 queue->position = nvkm_falcon_rd32(falcon, queue->tail_reg);

 return 0;
}
