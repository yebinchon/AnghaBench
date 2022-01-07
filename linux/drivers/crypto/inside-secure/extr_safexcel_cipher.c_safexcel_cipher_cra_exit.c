
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ctxr; } ;
struct safexcel_cipher_ctx {TYPE_2__ base; int key; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_3__ {int data; } ;


 int ENOMEM ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memzero_explicit (int ,int) ;

__attribute__((used)) static int safexcel_cipher_cra_exit(struct crypto_tfm *tfm)
{
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);

 memzero_explicit(ctx->key, sizeof(ctx->key));


 if (!ctx->base.ctxr)
  return -ENOMEM;

 memzero_explicit(ctx->base.ctxr->data, sizeof(ctx->base.ctxr->data));
 return 0;
}
