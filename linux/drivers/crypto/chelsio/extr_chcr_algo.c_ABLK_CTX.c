
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chcr_context {TYPE_1__* crypto_ctx; } ;
struct ablk_ctx {int dummy; } ;
struct TYPE_2__ {struct ablk_ctx* ablkctx; } ;



__attribute__((used)) static inline struct ablk_ctx *ABLK_CTX(struct chcr_context *ctx)
{
 return ctx->crypto_ctx->ablkctx;
}
