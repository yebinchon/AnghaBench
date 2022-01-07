
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_sched_job {int dummy; } ;
struct drm_sched_entity {TYPE_1__* rq; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_ring {int adev; } ;
struct TYPE_6__ {TYPE_2__* s_fence; } ;
struct amdgpu_job {int sync; TYPE_3__ base; int vmid; int sched_sync; struct amdgpu_vm* vm; } ;
struct TYPE_5__ {int finished; } ;
struct TYPE_4__ {int sched; } ;


 int DRM_ERROR (char*,int) ;
 int amdgpu_sync_fence (int ,int *,struct dma_fence*,int) ;
 struct dma_fence* amdgpu_sync_get_fence (int *,int*) ;
 int amdgpu_vmid_grab (struct amdgpu_vm*,struct amdgpu_ring*,int *,int *,struct amdgpu_job*) ;
 scalar_t__ drm_sched_dependency_optimized (struct dma_fence*,struct drm_sched_entity*) ;
 struct amdgpu_job* to_amdgpu_job (struct drm_sched_job*) ;
 struct amdgpu_ring* to_amdgpu_ring (int ) ;

__attribute__((used)) static struct dma_fence *amdgpu_job_dependency(struct drm_sched_job *sched_job,
            struct drm_sched_entity *s_entity)
{
 struct amdgpu_ring *ring = to_amdgpu_ring(s_entity->rq->sched);
 struct amdgpu_job *job = to_amdgpu_job(sched_job);
 struct amdgpu_vm *vm = job->vm;
 struct dma_fence *fence;
 bool explicit = 0;
 int r;

 fence = amdgpu_sync_get_fence(&job->sync, &explicit);
 if (fence && explicit) {
  if (drm_sched_dependency_optimized(fence, s_entity)) {
   r = amdgpu_sync_fence(ring->adev, &job->sched_sync,
           fence, 0);
   if (r)
    DRM_ERROR("Error adding fence (%d)\n", r);
  }
 }

 while (fence == ((void*)0) && vm && !job->vmid) {
  r = amdgpu_vmid_grab(vm, ring, &job->sync,
         &job->base.s_fence->finished,
         job);
  if (r)
   DRM_ERROR("Error getting VM ID (%d)\n", r);

  fence = amdgpu_sync_get_fence(&job->sync, ((void*)0));
 }

 return fence;
}
