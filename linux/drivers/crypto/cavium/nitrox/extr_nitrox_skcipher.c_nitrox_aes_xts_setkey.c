
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {TYPE_1__ u; } ;
struct TYPE_5__ {int key2; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct flexi_crypto_context {TYPE_3__ auth; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 struct crypto_tfm* crypto_skcipher_tfm (struct crypto_skcipher*) ;
 struct nitrox_crypto_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int flexi_aes_keylen (unsigned int) ;
 int memcpy (int ,int const*,unsigned int) ;
 int nitrox_skcipher_setkey (struct crypto_skcipher*,int,int const*,unsigned int) ;
 int xts_check_key (struct crypto_tfm*,int const*,unsigned int) ;

__attribute__((used)) static int nitrox_aes_xts_setkey(struct crypto_skcipher *cipher,
     const u8 *key, unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
 struct nitrox_crypto_ctx *nctx = crypto_tfm_ctx(tfm);
 struct flexi_crypto_context *fctx;
 int aes_keylen, ret;

 ret = xts_check_key(tfm, key, keylen);
 if (ret)
  return ret;

 keylen /= 2;

 aes_keylen = flexi_aes_keylen(keylen);
 if (aes_keylen < 0) {
  crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 fctx = nctx->u.fctx;

 memcpy(fctx->auth.u.key2, (key + keylen), keylen);

 return nitrox_skcipher_setkey(cipher, aes_keylen, key, keylen);
}
