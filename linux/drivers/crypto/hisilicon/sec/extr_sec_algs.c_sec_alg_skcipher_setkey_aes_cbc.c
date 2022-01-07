
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
typedef enum sec_cipher_alg { ____Placeholder_sec_cipher_alg } sec_cipher_alg ;





 int EINVAL ;
 int SEC_C_AES_CBC_128 ;
 int SEC_C_AES_CBC_192 ;
 int SEC_C_AES_CBC_256 ;
 int sec_alg_skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int,int) ;

__attribute__((used)) static int sec_alg_skcipher_setkey_aes_cbc(struct crypto_skcipher *tfm,
        const u8 *key, unsigned int keylen)
{
 enum sec_cipher_alg alg;

 switch (keylen) {
 case 130:
  alg = SEC_C_AES_CBC_128;
  break;
 case 129:
  alg = SEC_C_AES_CBC_192;
  break;
 case 128:
  alg = SEC_C_AES_CBC_256;
  break;
 default:
  return -EINVAL;
 }

 return sec_alg_skcipher_setkey(tfm, key, keylen, alg);
}
