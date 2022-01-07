
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_msgqueue_func {int dummy; } ;
struct nvkm_msgqueue {int init_done; TYPE_1__* seq; int seq_lock; struct nvkm_falcon* falcon; struct nvkm_msgqueue_func const* func; } ;
struct nvkm_falcon {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int NVKM_MSGQUEUE_NUM_SEQUENCES ;
 int init_completion (int *) ;
 int mutex_init (int *) ;

void
nvkm_msgqueue_ctor(const struct nvkm_msgqueue_func *func,
     struct nvkm_falcon *falcon,
     struct nvkm_msgqueue *queue)
{
 int i;

 queue->func = func;
 queue->falcon = falcon;
 mutex_init(&queue->seq_lock);
 for (i = 0; i < NVKM_MSGQUEUE_NUM_SEQUENCES; i++)
  queue->seq[i].id = i;

 init_completion(&queue->init_done);


}
