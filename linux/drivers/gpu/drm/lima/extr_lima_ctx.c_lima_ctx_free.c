
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_ctx_mgr {int lock; int handles; } ;
struct lima_ctx {int refcnt; } ;


 int EINVAL ;
 int kref_put (int *,int ) ;
 int lima_ctx_do_release ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct lima_ctx* xa_erase (int *,int ) ;

int lima_ctx_free(struct lima_ctx_mgr *mgr, u32 id)
{
 struct lima_ctx *ctx;
 int ret = 0;

 mutex_lock(&mgr->lock);
 ctx = xa_erase(&mgr->handles, id);
 if (ctx)
  kref_put(&ctx->refcnt, lima_ctx_do_release);
 else
  ret = -EINVAL;
 mutex_unlock(&mgr->lock);
 return ret;
}
