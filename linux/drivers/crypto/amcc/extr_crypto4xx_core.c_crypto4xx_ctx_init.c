
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto4xx_ctx {scalar_t__ sa_len; int * sa_out; int * sa_in; int dev; } ;
struct crypto4xx_alg {int dev; } ;



__attribute__((used)) static void crypto4xx_ctx_init(struct crypto4xx_alg *amcc_alg,
          struct crypto4xx_ctx *ctx)
{
 ctx->dev = amcc_alg->dev;
 ctx->sa_in = ((void*)0);
 ctx->sa_out = ((void*)0);
 ctx->sa_len = 0;
}
