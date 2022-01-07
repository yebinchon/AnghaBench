
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ctx_mgr {int lock; int ctx_handles; } ;
struct amdgpu_fpriv {struct amdgpu_ctx_mgr ctx_mgr; } ;
struct amdgpu_ctx {int refcount; } ;


 struct amdgpu_ctx* idr_find (int *,int ) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct amdgpu_ctx *amdgpu_ctx_get(struct amdgpu_fpriv *fpriv, uint32_t id)
{
 struct amdgpu_ctx *ctx;
 struct amdgpu_ctx_mgr *mgr;

 if (!fpriv)
  return ((void*)0);

 mgr = &fpriv->ctx_mgr;

 mutex_lock(&mgr->lock);
 ctx = idr_find(&mgr->ctx_handles, id);
 if (ctx)
  kref_get(&ctx->refcount);
 mutex_unlock(&mgr->lock);
 return ctx;
}
