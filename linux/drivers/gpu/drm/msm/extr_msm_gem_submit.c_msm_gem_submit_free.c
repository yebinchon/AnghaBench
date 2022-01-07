
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_submit {int queue; int pid; int node; int fence; } ;


 int dma_fence_put (int ) ;
 int kfree (struct msm_gem_submit*) ;
 int list_del (int *) ;
 int msm_submitqueue_put (int ) ;
 int put_pid (int ) ;

void msm_gem_submit_free(struct msm_gem_submit *submit)
{
 dma_fence_put(submit->fence);
 list_del(&submit->node);
 put_pid(submit->pid);
 msm_submitqueue_put(submit->queue);

 kfree(submit);
}
