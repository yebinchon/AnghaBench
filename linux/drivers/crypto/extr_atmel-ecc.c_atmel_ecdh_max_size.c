
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_kpp {int dummy; } ;
struct atmel_ecdh_ctx {scalar_t__ fallback; } ;


 unsigned int ATMEL_ECC_PUBKEY_SIZE ;
 unsigned int crypto_kpp_maxsize (scalar_t__) ;
 struct atmel_ecdh_ctx* kpp_tfm_ctx (struct crypto_kpp*) ;

__attribute__((used)) static unsigned int atmel_ecdh_max_size(struct crypto_kpp *tfm)
{
 struct atmel_ecdh_ctx *ctx = kpp_tfm_ctx(tfm);

 if (ctx->fallback)
  return crypto_kpp_maxsize(ctx->fallback);






 return ATMEL_ECC_PUBKEY_SIZE;
}
