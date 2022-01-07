
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qat_alg_ablkcipher_ctx {scalar_t__ enc_cd; } ;
struct crypto_ablkcipher {int dummy; } ;


 struct qat_alg_ablkcipher_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int qat_alg_ablkcipher_newkey (struct qat_alg_ablkcipher_ctx*,int const*,unsigned int,int) ;
 int qat_alg_ablkcipher_rekey (struct qat_alg_ablkcipher_ctx*,int const*,unsigned int,int) ;

__attribute__((used)) static int qat_alg_ablkcipher_setkey(struct crypto_ablkcipher *tfm,
         const u8 *key, unsigned int keylen,
         int mode)
{
 struct qat_alg_ablkcipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);

 if (ctx->enc_cd)
  return qat_alg_ablkcipher_rekey(ctx, key, keylen, mode);
 else
  return qat_alg_ablkcipher_newkey(ctx, key, keylen, mode);
}
