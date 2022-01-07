
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;


 int ablk_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;
 scalar_t__ verify_ablkcipher_des3_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int ablk_des3_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
       unsigned int key_len)
{
 return verify_ablkcipher_des3_key(tfm, key) ?:
        ablk_setkey(tfm, key, key_len);
}
