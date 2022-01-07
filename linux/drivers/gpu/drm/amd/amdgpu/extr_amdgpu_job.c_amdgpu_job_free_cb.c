
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_job {int s_priority; int sched; } ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_job {int sched_sync; int sync; int fence; } ;


 int amdgpu_ring_priority_put (struct amdgpu_ring*,int ) ;
 int amdgpu_sync_free (int *) ;
 int dma_fence_put (int ) ;
 int drm_sched_job_cleanup (struct drm_sched_job*) ;
 int kfree (struct amdgpu_job*) ;
 struct amdgpu_job* to_amdgpu_job (struct drm_sched_job*) ;
 struct amdgpu_ring* to_amdgpu_ring (int ) ;

__attribute__((used)) static void amdgpu_job_free_cb(struct drm_sched_job *s_job)
{
 struct amdgpu_ring *ring = to_amdgpu_ring(s_job->sched);
 struct amdgpu_job *job = to_amdgpu_job(s_job);

 drm_sched_job_cleanup(s_job);

 amdgpu_ring_priority_put(ring, s_job->s_priority);
 dma_fence_put(job->fence);
 amdgpu_sync_free(&job->sync);
 amdgpu_sync_free(&job->sched_sync);
 kfree(job);
}
