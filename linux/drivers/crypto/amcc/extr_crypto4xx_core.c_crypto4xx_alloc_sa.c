
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto4xx_ctx {int sa_len; int * sa_in; int * sa_out; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 void* kcalloc (int ,int,int ) ;
 int kfree (int *) ;

int crypto4xx_alloc_sa(struct crypto4xx_ctx *ctx, u32 size)
{
 ctx->sa_in = kcalloc(size, 4, GFP_ATOMIC);
 if (ctx->sa_in == ((void*)0))
  return -ENOMEM;

 ctx->sa_out = kcalloc(size, 4, GFP_ATOMIC);
 if (ctx->sa_out == ((void*)0)) {
  kfree(ctx->sa_in);
  ctx->sa_in = ((void*)0);
  return -ENOMEM;
 }

 ctx->sa_len = size;

 return 0;
}
