
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int hangs; } ;
union drm_amdgpu_ctx_out {TYPE_1__ state; } ;
typedef int uint32_t ;
struct amdgpu_ctx_mgr {int lock; int ctx_handles; } ;
struct amdgpu_fpriv {struct amdgpu_ctx_mgr ctx_mgr; } ;
struct amdgpu_device {int vram_lost_counter; int gpu_reset_counter; } ;
struct amdgpu_ctx {scalar_t__ reset_counter; scalar_t__ vram_lost_counter; unsigned long ras_counter_ue; unsigned long ras_counter_ce; int guilty; } ;


 int AMDGPU_CTX_QUERY2_FLAGS_GUILTY ;
 int AMDGPU_CTX_QUERY2_FLAGS_RAS_CE ;
 int AMDGPU_CTX_QUERY2_FLAGS_RAS_UE ;
 int AMDGPU_CTX_QUERY2_FLAGS_RESET ;
 int AMDGPU_CTX_QUERY2_FLAGS_VRAMLOST ;
 int EINVAL ;
 unsigned long amdgpu_ras_query_error_count (struct amdgpu_device*,int) ;
 scalar_t__ atomic_read (int *) ;
 struct amdgpu_ctx* idr_find (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int amdgpu_ctx_query2(struct amdgpu_device *adev,
 struct amdgpu_fpriv *fpriv, uint32_t id,
 union drm_amdgpu_ctx_out *out)
{
 struct amdgpu_ctx *ctx;
 struct amdgpu_ctx_mgr *mgr;
 unsigned long ras_counter;

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

 if (ctx->reset_counter != atomic_read(&adev->gpu_reset_counter))
  out->state.flags |= AMDGPU_CTX_QUERY2_FLAGS_RESET;

 if (ctx->vram_lost_counter != atomic_read(&adev->vram_lost_counter))
  out->state.flags |= AMDGPU_CTX_QUERY2_FLAGS_VRAMLOST;

 if (atomic_read(&ctx->guilty))
  out->state.flags |= AMDGPU_CTX_QUERY2_FLAGS_GUILTY;


 ras_counter = amdgpu_ras_query_error_count(adev, 0);

 if (ras_counter != ctx->ras_counter_ue) {
  out->state.flags |= AMDGPU_CTX_QUERY2_FLAGS_RAS_UE;
  ctx->ras_counter_ue = ras_counter;
 }


 ras_counter = amdgpu_ras_query_error_count(adev, 1);
 if (ras_counter != ctx->ras_counter_ce) {
  out->state.flags |= AMDGPU_CTX_QUERY2_FLAGS_RAS_CE;
  ctx->ras_counter_ce = ras_counter;
 }

 mutex_unlock(&mgr->lock);
 return 0;
}
