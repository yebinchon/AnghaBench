
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;


 unsigned int AES_KEYSIZE_128 ;
 unsigned int AES_KEYSIZE_192 ;
 unsigned int AES_KEYSIZE_256 ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int ablkcipher_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;

__attribute__((used)) static int ablkcipher_aes_setkey(struct crypto_ablkcipher *cipher,
      const u8 *key, unsigned int keylen)
{
 if (keylen == AES_KEYSIZE_128 || keylen == AES_KEYSIZE_192 ||
     keylen == AES_KEYSIZE_256)
  return ablkcipher_setkey(cipher, key, keylen);

 crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);

 return -EINVAL;
}
