
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_kpp {int dev; } ;
struct atmel_ecdh_ctx {struct crypto_kpp* fallback; struct crypto_kpp* client; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 scalar_t__ IS_ERR (struct crypto_kpp*) ;
 int PTR_ERR (struct crypto_kpp*) ;
 struct crypto_kpp* atmel_ecc_i2c_client_alloc () ;
 struct crypto_kpp* crypto_alloc_kpp (char const*,int ,int ) ;
 int crypto_kpp_get_flags (struct crypto_kpp*) ;
 int crypto_kpp_set_flags (struct crypto_kpp*,int ) ;
 int dev_err (int *,char*,char const*,int) ;
 char* kpp_alg_name (struct crypto_kpp*) ;
 struct atmel_ecdh_ctx* kpp_tfm_ctx (struct crypto_kpp*) ;
 int pr_err (char*) ;

__attribute__((used)) static int atmel_ecdh_init_tfm(struct crypto_kpp *tfm)
{
 const char *alg = kpp_alg_name(tfm);
 struct crypto_kpp *fallback;
 struct atmel_ecdh_ctx *ctx = kpp_tfm_ctx(tfm);

 ctx->client = atmel_ecc_i2c_client_alloc();
 if (IS_ERR(ctx->client)) {
  pr_err("tfm - i2c_client binding failed\n");
  return PTR_ERR(ctx->client);
 }

 fallback = crypto_alloc_kpp(alg, 0, CRYPTO_ALG_NEED_FALLBACK);
 if (IS_ERR(fallback)) {
  dev_err(&ctx->client->dev, "Failed to allocate transformation for '%s': %ld\n",
   alg, PTR_ERR(fallback));
  return PTR_ERR(fallback);
 }

 crypto_kpp_set_flags(fallback, crypto_kpp_get_flags(tfm));
 ctx->fallback = fallback;

 return 0;
}
