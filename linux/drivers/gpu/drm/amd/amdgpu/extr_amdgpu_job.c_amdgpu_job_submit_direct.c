
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct amdgpu_ring {int sched; } ;
struct TYPE_2__ {int * sched; } ;
struct amdgpu_job {int fence; int ibs; int num_ibs; TYPE_1__ base; } ;


 int amdgpu_ib_schedule (struct amdgpu_ring*,int ,int ,int *,struct dma_fence**) ;
 int amdgpu_job_free (struct amdgpu_job*) ;
 int dma_fence_get (struct dma_fence*) ;

int amdgpu_job_submit_direct(struct amdgpu_job *job, struct amdgpu_ring *ring,
        struct dma_fence **fence)
{
 int r;

 job->base.sched = &ring->sched;
 r = amdgpu_ib_schedule(ring, job->num_ibs, job->ibs, ((void*)0), fence);
 job->fence = dma_fence_get(*fence);
 if (r)
  return r;

 amdgpu_job_free(job);
 return 0;
}
