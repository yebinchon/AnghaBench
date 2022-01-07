
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_msgqueue_queue {int dummy; } ;
struct nvkm_msgqueue {int dummy; } ;
struct msgqueue_0148cdec {int base; struct nvkm_msgqueue_queue* queue; } ;


 size_t MSGQUEUE_0148CDEC_MESSAGE_QUEUE ;
 struct msgqueue_0148cdec* msgqueue_0148cdec (struct nvkm_msgqueue*) ;
 int nvkm_msgqueue_process_msgs (int *,struct nvkm_msgqueue_queue*) ;

__attribute__((used)) static void
msgqueue_0148cdec_process_msgs(struct nvkm_msgqueue *queue)
{
 struct msgqueue_0148cdec *priv = msgqueue_0148cdec(queue);
 struct nvkm_msgqueue_queue *q_queue =
  &priv->queue[MSGQUEUE_0148CDEC_MESSAGE_QUEUE];

 nvkm_msgqueue_process_msgs(&priv->base, q_queue);
}
