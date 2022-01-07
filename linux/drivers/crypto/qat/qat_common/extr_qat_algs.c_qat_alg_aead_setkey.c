
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qat_alg_aead_ctx {scalar_t__ enc_cd; } ;
struct crypto_aead {int dummy; } ;


 struct qat_alg_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int qat_alg_aead_newkey (struct crypto_aead*,int const*,unsigned int) ;
 int qat_alg_aead_rekey (struct crypto_aead*,int const*,unsigned int) ;

__attribute__((used)) static int qat_alg_aead_setkey(struct crypto_aead *tfm, const uint8_t *key,
          unsigned int keylen)
{
 struct qat_alg_aead_ctx *ctx = crypto_aead_ctx(tfm);

 if (ctx->enc_cd)
  return qat_alg_aead_rekey(tfm, key, keylen);
 else
  return qat_alg_aead_newkey(tfm, key, keylen);
}
