
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct atmel_aes_reqctx {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct atmel_aes_gcm_ctx {TYPE_1__ base; } ;


 int atmel_aes_gcm_start ;
 struct atmel_aes_gcm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_reqsize (struct crypto_aead*,int) ;

__attribute__((used)) static int atmel_aes_gcm_init(struct crypto_aead *tfm)
{
 struct atmel_aes_gcm_ctx *ctx = crypto_aead_ctx(tfm);

 crypto_aead_set_reqsize(tfm, sizeof(struct atmel_aes_reqctx));
 ctx->base.start = atmel_aes_gcm_start;

 return 0;
}
