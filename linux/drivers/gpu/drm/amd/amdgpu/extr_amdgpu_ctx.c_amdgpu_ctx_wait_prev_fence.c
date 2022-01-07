
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ctx_entity {int sequence; int * fences; } ;
struct amdgpu_ctx {int ring_lock; } ;


 int DRM_ERROR (char*,long) ;
 long ERESTARTSYS ;
 int amdgpu_sched_jobs ;
 struct dma_fence* dma_fence_get (int ) ;
 int dma_fence_put (struct dma_fence*) ;
 long dma_fence_wait (struct dma_fence*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct amdgpu_ctx_entity* to_amdgpu_ctx_entity (struct drm_sched_entity*) ;

int amdgpu_ctx_wait_prev_fence(struct amdgpu_ctx *ctx,
          struct drm_sched_entity *entity)
{
 struct amdgpu_ctx_entity *centity = to_amdgpu_ctx_entity(entity);
 struct dma_fence *other;
 unsigned idx;
 long r;

 spin_lock(&ctx->ring_lock);
 idx = centity->sequence & (amdgpu_sched_jobs - 1);
 other = dma_fence_get(centity->fences[idx]);
 spin_unlock(&ctx->ring_lock);

 if (!other)
  return 0;

 r = dma_fence_wait(other, 1);
 if (r < 0 && r != -ERESTARTSYS)
  DRM_ERROR("Error (%ld) waiting for fence!\n", r);

 dma_fence_put(other);
 return r;
}
