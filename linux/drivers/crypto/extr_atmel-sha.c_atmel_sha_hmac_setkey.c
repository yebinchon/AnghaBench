
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_hmac_ctx {int hkey; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 scalar_t__ atmel_sha_hmac_key_set (int *,int const*,unsigned int) ;
 struct atmel_sha_hmac_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int ) ;

__attribute__((used)) static int atmel_sha_hmac_setkey(struct crypto_ahash *tfm, const u8 *key,
     unsigned int keylen)
{
 struct atmel_sha_hmac_ctx *hmac = crypto_ahash_ctx(tfm);

 if (atmel_sha_hmac_key_set(&hmac->hkey, key, keylen)) {
  crypto_ahash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 return 0;
}
