
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 int nitrox_skcipher_setkey (struct crypto_skcipher*,int ,int const*,unsigned int) ;
 scalar_t__ verify_skcipher_des3_key (struct crypto_skcipher*,int const*) ;

__attribute__((used)) static int nitrox_3des_setkey(struct crypto_skcipher *cipher,
         const u8 *key, unsigned int keylen)
{
 return verify_skcipher_des3_key(cipher, key) ?:
        nitrox_skcipher_setkey(cipher, 0, key, keylen);
}
