
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ctx {int refcnt; } ;


 int kref_put (int *,int ) ;
 int lima_ctx_do_release ;

void lima_ctx_put(struct lima_ctx *ctx)
{
 kref_put(&ctx->refcnt, lima_ctx_do_release);
}
