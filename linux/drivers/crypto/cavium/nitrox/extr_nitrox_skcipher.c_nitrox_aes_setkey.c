
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int flexi_aes_keylen (unsigned int) ;
 int nitrox_skcipher_setkey (struct crypto_skcipher*,int,int const*,unsigned int) ;

__attribute__((used)) static int nitrox_aes_setkey(struct crypto_skcipher *cipher, const u8 *key,
        unsigned int keylen)
{
 int aes_keylen;

 aes_keylen = flexi_aes_keylen(keylen);
 if (aes_keylen < 0) {
  crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }
 return nitrox_skcipher_setkey(cipher, aes_keylen, key, keylen);
}
