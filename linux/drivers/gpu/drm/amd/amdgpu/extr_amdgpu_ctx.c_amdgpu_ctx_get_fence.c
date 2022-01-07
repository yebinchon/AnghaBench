
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ctx_entity {unsigned long long sequence; int * fences; } ;
struct amdgpu_ctx {int ring_lock; } ;


 int EINVAL ;
 struct dma_fence* ERR_PTR (int ) ;
 unsigned long long amdgpu_sched_jobs ;
 struct dma_fence* dma_fence_get (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct amdgpu_ctx_entity* to_amdgpu_ctx_entity (struct drm_sched_entity*) ;

struct dma_fence *amdgpu_ctx_get_fence(struct amdgpu_ctx *ctx,
           struct drm_sched_entity *entity,
           uint64_t seq)
{
 struct amdgpu_ctx_entity *centity = to_amdgpu_ctx_entity(entity);
 struct dma_fence *fence;

 spin_lock(&ctx->ring_lock);

 if (seq == ~0ull)
  seq = centity->sequence - 1;

 if (seq >= centity->sequence) {
  spin_unlock(&ctx->ring_lock);
  return ERR_PTR(-EINVAL);
 }


 if (seq + amdgpu_sched_jobs < centity->sequence) {
  spin_unlock(&ctx->ring_lock);
  return ((void*)0);
 }

 fence = dma_fence_get(centity->fences[seq & (amdgpu_sched_jobs - 1)]);
 spin_unlock(&ctx->ring_lock);

 return fence;
}
