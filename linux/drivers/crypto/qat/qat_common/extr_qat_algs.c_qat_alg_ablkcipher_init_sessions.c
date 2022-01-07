
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qat_alg_ablkcipher_ctx {int tfm; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int crypto_tfm_set_flags (int ,int ) ;
 int qat_alg_ablkcipher_init_dec (struct qat_alg_ablkcipher_ctx*,int,int const*,unsigned int,int) ;
 int qat_alg_ablkcipher_init_enc (struct qat_alg_ablkcipher_ctx*,int,int const*,unsigned int,int) ;
 scalar_t__ qat_alg_validate_key (unsigned int,int*,int) ;

__attribute__((used)) static int qat_alg_ablkcipher_init_sessions(struct qat_alg_ablkcipher_ctx *ctx,
         const uint8_t *key,
         unsigned int keylen,
         int mode)
{
 int alg;

 if (qat_alg_validate_key(keylen, &alg, mode))
  goto bad_key;

 qat_alg_ablkcipher_init_enc(ctx, alg, key, keylen, mode);
 qat_alg_ablkcipher_init_dec(ctx, alg, key, keylen, mode);
 return 0;
bad_key:
 crypto_tfm_set_flags(ctx->tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
 return -EINVAL;
}
