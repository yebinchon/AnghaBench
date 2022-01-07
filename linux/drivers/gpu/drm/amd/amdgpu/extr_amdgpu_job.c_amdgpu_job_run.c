
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_sched_job {int sched; } ;
struct dma_fence {scalar_t__ error; } ;
struct amdgpu_ring {TYPE_3__* adev; } ;
struct TYPE_5__ {TYPE_1__* s_fence; } ;
struct amdgpu_job {scalar_t__ vram_lost_counter; int fence; int ibs; int num_ibs; int sync; TYPE_2__ base; } ;
struct TYPE_6__ {int vram_lost_counter; } ;
struct TYPE_4__ {struct dma_fence finished; } ;


 int BUG_ON (int ) ;
 int DRM_ERROR (char*,int) ;
 int DRM_INFO (char*) ;
 int ECANCELED ;
 struct dma_fence* ERR_PTR (int) ;
 int amdgpu_ib_schedule (struct amdgpu_ring*,int ,int ,struct amdgpu_job*,struct dma_fence**) ;
 int amdgpu_job_free_resources (struct amdgpu_job*) ;
 int amdgpu_sync_peek_fence (int *,int *) ;
 scalar_t__ atomic_read (int *) ;
 int dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (int ) ;
 int dma_fence_set_error (struct dma_fence*,int ) ;
 struct amdgpu_job* to_amdgpu_job (struct drm_sched_job*) ;
 struct amdgpu_ring* to_amdgpu_ring (int ) ;
 int trace_amdgpu_sched_run_job (struct amdgpu_job*) ;

__attribute__((used)) static struct dma_fence *amdgpu_job_run(struct drm_sched_job *sched_job)
{
 struct amdgpu_ring *ring = to_amdgpu_ring(sched_job->sched);
 struct dma_fence *fence = ((void*)0), *finished;
 struct amdgpu_job *job;
 int r = 0;

 job = to_amdgpu_job(sched_job);
 finished = &job->base.s_fence->finished;

 BUG_ON(amdgpu_sync_peek_fence(&job->sync, ((void*)0)));

 trace_amdgpu_sched_run_job(job);

 if (job->vram_lost_counter != atomic_read(&ring->adev->vram_lost_counter))
  dma_fence_set_error(finished, -ECANCELED);

 if (finished->error < 0) {
  DRM_INFO("Skip scheduling IBs!\n");
 } else {
  r = amdgpu_ib_schedule(ring, job->num_ibs, job->ibs, job,
           &fence);
  if (r)
   DRM_ERROR("Error scheduling IBs (%d)\n", r);
 }

 dma_fence_put(job->fence);
 job->fence = dma_fence_get(fence);

 amdgpu_job_free_resources(job);

 fence = r ? ERR_PTR(r) : fence;
 return fence;
}
