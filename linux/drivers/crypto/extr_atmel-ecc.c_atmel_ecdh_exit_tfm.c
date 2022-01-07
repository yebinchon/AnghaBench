
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_kpp {int dummy; } ;
struct atmel_ecdh_ctx {int client; int fallback; int public_key; } ;


 int atmel_ecc_i2c_client_free (int ) ;
 int crypto_free_kpp (int ) ;
 int kfree (int ) ;
 struct atmel_ecdh_ctx* kpp_tfm_ctx (struct crypto_kpp*) ;

__attribute__((used)) static void atmel_ecdh_exit_tfm(struct crypto_kpp *tfm)
{
 struct atmel_ecdh_ctx *ctx = kpp_tfm_ctx(tfm);

 kfree(ctx->public_key);
 crypto_free_kpp(ctx->fallback);
 atmel_ecc_i2c_client_free(ctx->client);
}
