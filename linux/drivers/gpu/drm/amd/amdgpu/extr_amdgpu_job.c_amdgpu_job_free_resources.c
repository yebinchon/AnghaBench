
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct amdgpu_ring {int adev; } ;
struct TYPE_4__ {TYPE_1__* s_fence; int sched; } ;
struct amdgpu_job {unsigned int num_ibs; int * ibs; struct dma_fence* fence; TYPE_2__ base; } ;
struct TYPE_3__ {struct dma_fence finished; } ;


 int amdgpu_ib_free (int ,int *,struct dma_fence*) ;
 struct amdgpu_ring* to_amdgpu_ring (int ) ;

void amdgpu_job_free_resources(struct amdgpu_job *job)
{
 struct amdgpu_ring *ring = to_amdgpu_ring(job->base.sched);
 struct dma_fence *f;
 unsigned i;


 f = job->base.s_fence ? &job->base.s_fence->finished : job->fence;

 for (i = 0; i < job->num_ibs; ++i)
  amdgpu_ib_free(ring->adev, &job->ibs[i], f);
}
