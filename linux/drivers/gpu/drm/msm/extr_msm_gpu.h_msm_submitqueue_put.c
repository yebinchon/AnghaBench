
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu_submitqueue {int ref; } ;


 int kref_put (int *,int ) ;
 int msm_submitqueue_destroy ;

__attribute__((used)) static inline void msm_submitqueue_put(struct msm_gpu_submitqueue *queue)
{
 if (queue)
  kref_put(&queue->ref, msm_submitqueue_destroy);
}
