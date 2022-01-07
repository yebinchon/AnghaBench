
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ctx_entity {int sequence; struct dma_fence** fences; } ;
struct amdgpu_ctx {int ring_lock; } ;


 int BUG_ON (int) ;
 int amdgpu_sched_jobs ;
 int dma_fence_get (struct dma_fence*) ;
 int dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct amdgpu_ctx_entity* to_amdgpu_ctx_entity (struct drm_sched_entity*) ;

void amdgpu_ctx_add_fence(struct amdgpu_ctx *ctx,
     struct drm_sched_entity *entity,
     struct dma_fence *fence, uint64_t* handle)
{
 struct amdgpu_ctx_entity *centity = to_amdgpu_ctx_entity(entity);
 uint64_t seq = centity->sequence;
 struct dma_fence *other = ((void*)0);
 unsigned idx = 0;

 idx = seq & (amdgpu_sched_jobs - 1);
 other = centity->fences[idx];
 if (other)
  BUG_ON(!dma_fence_is_signaled(other));

 dma_fence_get(fence);

 spin_lock(&ctx->ring_lock);
 centity->fences[idx] = fence;
 centity->sequence++;
 spin_unlock(&ctx->ring_lock);

 dma_fence_put(other);
 if (handle)
  *handle = seq;
}
