
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;


 unsigned int AES_KEYSIZE_128 ;
 unsigned int AES_KEYSIZE_192 ;
 unsigned int AES_KEYSIZE_256 ;
 int EINVAL ;
 int stm32_cryp_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;

__attribute__((used)) static int stm32_cryp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
     unsigned int keylen)
{
 if (keylen != AES_KEYSIZE_128 && keylen != AES_KEYSIZE_192 &&
     keylen != AES_KEYSIZE_256)
  return -EINVAL;
 else
  return stm32_cryp_setkey(tfm, key, keylen);
}
