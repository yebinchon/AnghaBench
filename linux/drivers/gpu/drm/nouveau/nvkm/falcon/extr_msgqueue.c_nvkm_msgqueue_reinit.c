
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_msgqueue {int init_msg_received; int init_done; } ;


 int reinit_completion (int *) ;

int
nvkm_msgqueue_reinit(struct nvkm_msgqueue *queue)
{

 if (!queue)
  return 0;

 queue->init_msg_received = 0;
 reinit_completion(&queue->init_done);

 return 0;
}
