
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ctx_mgr {int lock; int ctx_handles; } ;
struct amdgpu_fpriv {struct amdgpu_ctx_mgr ctx_mgr; } ;
struct amdgpu_ctx {int refcount; } ;


 int EINVAL ;
 int amdgpu_ctx_do_release ;
 struct amdgpu_ctx* idr_remove (int *,int ) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int amdgpu_ctx_free(struct amdgpu_fpriv *fpriv, uint32_t id)
{
 struct amdgpu_ctx_mgr *mgr = &fpriv->ctx_mgr;
 struct amdgpu_ctx *ctx;

 mutex_lock(&mgr->lock);
 ctx = idr_remove(&mgr->ctx_handles, id);
 if (ctx)
  kref_put(&ctx->refcount, amdgpu_ctx_do_release);
 mutex_unlock(&mgr->lock);
 return ctx ? 0 : -EINVAL;
}
