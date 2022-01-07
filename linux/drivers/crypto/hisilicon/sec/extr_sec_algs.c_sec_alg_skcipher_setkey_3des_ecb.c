
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 int SEC_C_3DES_ECB_192_3KEY ;
 int sec_alg_skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int,int ) ;
 scalar_t__ verify_skcipher_des3_key (struct crypto_skcipher*,int const*) ;

__attribute__((used)) static int sec_alg_skcipher_setkey_3des_ecb(struct crypto_skcipher *tfm,
         const u8 *key, unsigned int keylen)
{
 return verify_skcipher_des3_key(tfm, key) ?:
        sec_alg_skcipher_setkey(tfm, key, keylen,
           SEC_C_3DES_ECB_192_3KEY);
}
