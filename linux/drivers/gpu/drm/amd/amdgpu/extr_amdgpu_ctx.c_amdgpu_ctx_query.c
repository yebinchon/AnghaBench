
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int hangs; int reset_status; } ;
union drm_amdgpu_ctx_out {TYPE_1__ state; } ;
typedef int uint32_t ;
struct amdgpu_ctx_mgr {int lock; int ctx_handles; } ;
struct amdgpu_fpriv {struct amdgpu_ctx_mgr ctx_mgr; } ;
struct amdgpu_device {int gpu_reset_counter; } ;
struct amdgpu_ctx {unsigned int reset_counter_query; } ;


 int AMDGPU_CTX_NO_RESET ;
 int AMDGPU_CTX_UNKNOWN_RESET ;
 int EINVAL ;
 unsigned int atomic_read (int *) ;
 struct amdgpu_ctx* idr_find (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int amdgpu_ctx_query(struct amdgpu_device *adev,
       struct amdgpu_fpriv *fpriv, uint32_t id,
       union drm_amdgpu_ctx_out *out)
{
 struct amdgpu_ctx *ctx;
 struct amdgpu_ctx_mgr *mgr;
 unsigned reset_counter;

 if (!fpriv)
  return -EINVAL;

 mgr = &fpriv->ctx_mgr;
 mutex_lock(&mgr->lock);
 ctx = idr_find(&mgr->ctx_handles, id);
 if (!ctx) {
  mutex_unlock(&mgr->lock);
  return -EINVAL;
 }


 out->state.flags = 0x0;
 out->state.hangs = 0x0;


 reset_counter = atomic_read(&adev->gpu_reset_counter);

 if (ctx->reset_counter_query == reset_counter)
  out->state.reset_status = AMDGPU_CTX_NO_RESET;
 else
  out->state.reset_status = AMDGPU_CTX_UNKNOWN_RESET;
 ctx->reset_counter_query = reset_counter;

 mutex_unlock(&mgr->lock);
 return 0;
}
