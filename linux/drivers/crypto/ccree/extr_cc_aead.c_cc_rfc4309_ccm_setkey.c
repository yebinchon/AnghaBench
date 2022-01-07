
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct cc_aead_ctx {int ctr_nonce; } ;


 int EINVAL ;
 int cc_aead_setkey (struct crypto_aead*,int const*,unsigned int) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int cc_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key,
     unsigned int keylen)
{
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);

 if (keylen < 3)
  return -EINVAL;

 keylen -= 3;
 memcpy(ctx->ctr_nonce, key + keylen, 3);

 return cc_aead_setkey(tfm, key, keylen);
}
