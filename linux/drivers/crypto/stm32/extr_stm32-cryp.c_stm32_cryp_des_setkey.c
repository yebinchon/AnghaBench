
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;


 int stm32_cryp_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;
 scalar_t__ verify_ablkcipher_des_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int stm32_cryp_des_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
     unsigned int keylen)
{
 return verify_ablkcipher_des_key(tfm, key) ?:
        stm32_cryp_setkey(tfm, key, keylen);
}
