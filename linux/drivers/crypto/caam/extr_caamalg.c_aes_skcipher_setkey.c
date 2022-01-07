
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int aes_check_keylen (unsigned int) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int,int ) ;

__attribute__((used)) static int aes_skcipher_setkey(struct crypto_skcipher *skcipher,
          const u8 *key, unsigned int keylen)
{
 int err;

 err = aes_check_keylen(keylen);
 if (err) {
  crypto_skcipher_set_flags(skcipher,
       CRYPTO_TFM_RES_BAD_KEY_LEN);
  return err;
 }

 return skcipher_setkey(skcipher, key, keylen, 0);
}
