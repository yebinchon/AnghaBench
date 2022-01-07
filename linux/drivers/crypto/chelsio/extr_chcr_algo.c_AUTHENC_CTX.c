
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chcr_authenc_ctx {int dummy; } ;
struct chcr_aead_ctx {TYPE_1__* ctx; } ;
struct TYPE_2__ {struct chcr_authenc_ctx* authenc; } ;



__attribute__((used)) static inline struct chcr_authenc_ctx *AUTHENC_CTX(struct chcr_aead_ctx *gctx)
{
 return gctx->ctx->authenc;
}
