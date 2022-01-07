
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 unsigned int CHACHA_KEY_SIZE ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int,int ) ;

__attribute__((used)) static int chacha20_skcipher_setkey(struct crypto_skcipher *skcipher,
        const u8 *key, unsigned int keylen)
{
 if (keylen != CHACHA_KEY_SIZE) {
  crypto_skcipher_set_flags(skcipher,
       CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 return skcipher_setkey(skcipher, key, keylen, 0);
}
