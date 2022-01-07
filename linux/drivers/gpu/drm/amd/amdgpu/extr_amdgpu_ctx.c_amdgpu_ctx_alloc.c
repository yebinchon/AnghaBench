
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct drm_file {int dummy; } ;
struct amdgpu_ctx_mgr {int lock; int ctx_handles; } ;
struct amdgpu_fpriv {struct amdgpu_ctx_mgr ctx_mgr; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_ctx {int dummy; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;


 int AMDGPU_VM_MAX_NUM_CTX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_ctx_init (struct amdgpu_device*,int,struct drm_file*,struct amdgpu_ctx*) ;
 int idr_alloc (int *,struct amdgpu_ctx*,int,int ,int ) ;
 int idr_remove (int *,scalar_t__) ;
 int kfree (struct amdgpu_ctx*) ;
 struct amdgpu_ctx* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int amdgpu_ctx_alloc(struct amdgpu_device *adev,
       struct amdgpu_fpriv *fpriv,
       struct drm_file *filp,
       enum drm_sched_priority priority,
       uint32_t *id)
{
 struct amdgpu_ctx_mgr *mgr = &fpriv->ctx_mgr;
 struct amdgpu_ctx *ctx;
 int r;

 ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 mutex_lock(&mgr->lock);
 r = idr_alloc(&mgr->ctx_handles, ctx, 1, AMDGPU_VM_MAX_NUM_CTX, GFP_KERNEL);
 if (r < 0) {
  mutex_unlock(&mgr->lock);
  kfree(ctx);
  return r;
 }

 *id = (uint32_t)r;
 r = amdgpu_ctx_init(adev, priority, filp, ctx);
 if (r) {
  idr_remove(&mgr->ctx_handles, *id);
  *id = 0;
  kfree(ctx);
 }
 mutex_unlock(&mgr->lock);
 return r;
}
