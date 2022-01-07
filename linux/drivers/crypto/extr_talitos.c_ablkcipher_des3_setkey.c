
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;


 int ablkcipher_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;
 scalar_t__ verify_ablkcipher_des3_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int ablkcipher_des3_setkey(struct crypto_ablkcipher *cipher,
      const u8 *key, unsigned int keylen)
{
 return verify_ablkcipher_des3_key(cipher, key) ?:
        ablkcipher_setkey(cipher, key, keylen);
}
