
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 scalar_t__ CTR_RFC3686_NONCE_SIZE ;
 int aes_check_keylen (unsigned int) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int,scalar_t__) ;

__attribute__((used)) static int rfc3686_skcipher_setkey(struct crypto_skcipher *skcipher,
       const u8 *key, unsigned int keylen)
{
 u32 ctx1_iv_off;
 int err;






 ctx1_iv_off = 16 + CTR_RFC3686_NONCE_SIZE;
 keylen -= CTR_RFC3686_NONCE_SIZE;

 err = aes_check_keylen(keylen);
 if (err) {
  crypto_skcipher_set_flags(skcipher,
       CRYPTO_TFM_RES_BAD_KEY_LEN);
  return err;
 }

 return skcipher_setkey(skcipher, key, keylen, ctx1_iv_off);
}
