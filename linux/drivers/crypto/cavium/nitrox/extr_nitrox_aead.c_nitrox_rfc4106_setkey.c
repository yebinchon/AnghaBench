
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {TYPE_1__ u; } ;
struct TYPE_4__ {int iv; } ;
struct flexi_crypto_context {TYPE_2__ crypto; } ;
struct crypto_aead {int dummy; } ;


 int EINVAL ;
 unsigned int GCM_AES_SALT_SIZE ;
 struct nitrox_crypto_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int nitrox_aes_gcm_setkey (struct crypto_aead*,int const*,unsigned int) ;

__attribute__((used)) static int nitrox_rfc4106_setkey(struct crypto_aead *aead, const u8 *key,
     unsigned int keylen)
{
 struct nitrox_crypto_ctx *nctx = crypto_aead_ctx(aead);
 struct flexi_crypto_context *fctx = nctx->u.fctx;
 int ret;

 if (keylen < GCM_AES_SALT_SIZE)
  return -EINVAL;

 keylen -= GCM_AES_SALT_SIZE;
 ret = nitrox_aes_gcm_setkey(aead, key, keylen);
 if (ret)
  return ret;

 memcpy(fctx->crypto.iv, key + keylen, GCM_AES_SALT_SIZE);
 return 0;
}
