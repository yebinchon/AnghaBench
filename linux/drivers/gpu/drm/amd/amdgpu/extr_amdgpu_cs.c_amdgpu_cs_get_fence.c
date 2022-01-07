
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_entity {int dummy; } ;
struct drm_file {int driver_priv; } ;
struct drm_amdgpu_fence {int seq_no; int ring; int ip_instance; int ip_type; int ctx_id; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_ctx {int dummy; } ;


 int EINVAL ;
 struct dma_fence* ERR_PTR (int) ;
 struct amdgpu_ctx* amdgpu_ctx_get (int ,int ) ;
 int amdgpu_ctx_get_entity (struct amdgpu_ctx*,int ,int ,int ,struct drm_sched_entity**) ;
 struct dma_fence* amdgpu_ctx_get_fence (struct amdgpu_ctx*,struct drm_sched_entity*,int ) ;
 int amdgpu_ctx_put (struct amdgpu_ctx*) ;

__attribute__((used)) static struct dma_fence *amdgpu_cs_get_fence(struct amdgpu_device *adev,
          struct drm_file *filp,
          struct drm_amdgpu_fence *user)
{
 struct drm_sched_entity *entity;
 struct amdgpu_ctx *ctx;
 struct dma_fence *fence;
 int r;

 ctx = amdgpu_ctx_get(filp->driver_priv, user->ctx_id);
 if (ctx == ((void*)0))
  return ERR_PTR(-EINVAL);

 r = amdgpu_ctx_get_entity(ctx, user->ip_type, user->ip_instance,
      user->ring, &entity);
 if (r) {
  amdgpu_ctx_put(ctx);
  return ERR_PTR(r);
 }

 fence = amdgpu_ctx_get_fence(ctx, entity, user->seq_no);
 amdgpu_ctx_put(ctx);

 return fence;
}
