
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* uninitialize ) (struct kernel_queue*) ;} ;
struct kernel_queue {TYPE_3__* queue; int dev; int pq; TYPE_1__ ops_asic_specific; int wptr_mem; int rptr_mem; TYPE_4__* mqd_mgr; int fence_mem_obj; } ;
struct TYPE_9__ {int (* free_mqd ) (TYPE_4__*,int ,int ) ;int (* destroy_mqd ) (TYPE_4__*,int ,int ,int ,int ,int ) ;} ;
struct TYPE_7__ {scalar_t__ type; int doorbell_ptr; } ;
struct TYPE_8__ {TYPE_2__ properties; int mqd_mem_obj; int mqd; int queue; int pipe; } ;


 int KFD_PREEMPT_TYPE_WAVEFRONT_RESET ;
 scalar_t__ KFD_QUEUE_TYPE_DIQ ;
 scalar_t__ KFD_QUEUE_TYPE_HIQ ;
 int KFD_UNMAP_LATENCY_MS ;
 int kfd_gtt_sa_free (int ,int ) ;
 int kfd_release_kernel_doorbell (int ,int ) ;
 int stub1 (TYPE_4__*,int ,int ,int ,int ,int ) ;
 int stub2 (TYPE_4__*,int ,int ) ;
 int stub3 (struct kernel_queue*) ;
 int uninit_queue (TYPE_3__*) ;

__attribute__((used)) static void uninitialize(struct kernel_queue *kq)
{
 if (kq->queue->properties.type == KFD_QUEUE_TYPE_HIQ)
  kq->mqd_mgr->destroy_mqd(kq->mqd_mgr,
     kq->queue->mqd,
     KFD_PREEMPT_TYPE_WAVEFRONT_RESET,
     KFD_UNMAP_LATENCY_MS,
     kq->queue->pipe,
     kq->queue->queue);
 else if (kq->queue->properties.type == KFD_QUEUE_TYPE_DIQ)
  kfd_gtt_sa_free(kq->dev, kq->fence_mem_obj);

 kq->mqd_mgr->free_mqd(kq->mqd_mgr, kq->queue->mqd,
    kq->queue->mqd_mem_obj);

 kfd_gtt_sa_free(kq->dev, kq->rptr_mem);
 kfd_gtt_sa_free(kq->dev, kq->wptr_mem);
 kq->ops_asic_specific.uninitialize(kq);
 kfd_gtt_sa_free(kq->dev, kq->pq);
 kfd_release_kernel_doorbell(kq->dev,
     kq->queue->properties.doorbell_ptr);
 uninit_queue(kq->queue);
}
