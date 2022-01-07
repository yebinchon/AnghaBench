
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {unsigned int keylen; int const* key_virt; } ;
struct caam_ctx {TYPE_1__ cdata; } ;


 unsigned int CHACHAPOLY_IV_SIZE ;
 unsigned int CHACHA_KEY_SIZE ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int chachapoly_set_sh_desc (struct crypto_aead*) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;

__attribute__((used)) static int chachapoly_setkey(struct crypto_aead *aead, const u8 *key,
        unsigned int keylen)
{
 struct caam_ctx *ctx = crypto_aead_ctx(aead);
 unsigned int ivsize = crypto_aead_ivsize(aead);
 unsigned int saltlen = CHACHAPOLY_IV_SIZE - ivsize;

 if (keylen != CHACHA_KEY_SIZE + saltlen) {
  crypto_aead_set_flags(aead, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 ctx->cdata.key_virt = key;
 ctx->cdata.keylen = keylen - saltlen;

 return chachapoly_set_sh_desc(aead);
}
