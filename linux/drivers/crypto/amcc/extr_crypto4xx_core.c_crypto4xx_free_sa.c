
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto4xx_ctx {scalar_t__ sa_len; int * sa_out; int * sa_in; } ;


 int kfree (int *) ;

void crypto4xx_free_sa(struct crypto4xx_ctx *ctx)
{
 kfree(ctx->sa_in);
 ctx->sa_in = ((void*)0);
 kfree(ctx->sa_out);
 ctx->sa_out = ((void*)0);
 ctx->sa_len = 0;
}
