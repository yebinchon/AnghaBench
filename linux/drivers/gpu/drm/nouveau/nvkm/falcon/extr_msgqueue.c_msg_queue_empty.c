
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_msgqueue_queue {int tail_reg; int head_reg; } ;
struct nvkm_msgqueue {struct nvkm_falcon* falcon; } ;
struct nvkm_falcon {int dummy; } ;


 scalar_t__ nvkm_falcon_rd32 (struct nvkm_falcon*,int ) ;

__attribute__((used)) static bool
msg_queue_empty(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue)
{
 struct nvkm_falcon *falcon = priv->falcon;
 u32 head, tail;

 head = nvkm_falcon_rd32(falcon, queue->head_reg);
 tail = nvkm_falcon_rd32(falcon, queue->tail_reg);

 return head == tail;
}
