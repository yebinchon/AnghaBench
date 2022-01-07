
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hmac_ctx {int dummy; } ;
struct chcr_context {TYPE_1__* crypto_ctx; } ;
struct TYPE_2__ {struct hmac_ctx* hmacctx; } ;



__attribute__((used)) static inline struct hmac_ctx *HMAC_CTX(struct chcr_context *ctx)
{
 return ctx->crypto_ctx->hmacctx;
}
