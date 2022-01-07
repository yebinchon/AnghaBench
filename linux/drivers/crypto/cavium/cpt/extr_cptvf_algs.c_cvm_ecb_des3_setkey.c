
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_ablkcipher {int dummy; } ;


 int DES3_ECB ;
 int cvm_setkey (struct crypto_ablkcipher*,int const*,int ,int ) ;
 scalar_t__ verify_ablkcipher_des3_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int cvm_ecb_des3_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
          u32 keylen)
{
 return verify_ablkcipher_des3_key(cipher, key) ?:
        cvm_setkey(cipher, key, keylen, DES3_ECB);
}
