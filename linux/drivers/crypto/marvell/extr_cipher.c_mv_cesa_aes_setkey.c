
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int key_length; int * key_enc; int * key_dec; } ;
struct mv_cesa_aes_ctx {TYPE_1__ aes; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int aes_expandkey (TYPE_1__*,int const*,unsigned int) ;
 int cpu_to_le32 (int ) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 struct crypto_tfm* crypto_skcipher_tfm (struct crypto_skcipher*) ;
 struct mv_cesa_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int mv_cesa_aes_setkey(struct crypto_skcipher *cipher, const u8 *key,
         unsigned int len)
{
 struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
 struct mv_cesa_aes_ctx *ctx = crypto_tfm_ctx(tfm);
 int remaining;
 int offset;
 int ret;
 int i;

 ret = aes_expandkey(&ctx->aes, key, len);
 if (ret) {
  crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return ret;
 }

 remaining = (ctx->aes.key_length - 16) / 4;
 offset = ctx->aes.key_length + 24 - remaining;
 for (i = 0; i < remaining; i++)
  ctx->aes.key_dec[4 + i] =
   cpu_to_le32(ctx->aes.key_enc[offset + i]);

 return 0;
}
