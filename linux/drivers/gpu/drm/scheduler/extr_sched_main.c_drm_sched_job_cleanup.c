
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_sched_job {TYPE_1__* s_fence; } ;
struct TYPE_2__ {int finished; } ;


 int dma_fence_put (int *) ;

void drm_sched_job_cleanup(struct drm_sched_job *job)
{
 dma_fence_put(&job->s_fence->finished);
 job->s_fence = ((void*)0);
}
