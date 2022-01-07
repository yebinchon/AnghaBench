
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_ctx_mgr {int lock; int handles; } ;
struct lima_ctx {int refcnt; } ;


 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct lima_ctx* xa_load (int *,int ) ;

struct lima_ctx *lima_ctx_get(struct lima_ctx_mgr *mgr, u32 id)
{
 struct lima_ctx *ctx;

 mutex_lock(&mgr->lock);
 ctx = xa_load(&mgr->handles, id);
 if (ctx)
  kref_get(&ctx->refcnt);
 mutex_unlock(&mgr->lock);
 return ctx;
}
