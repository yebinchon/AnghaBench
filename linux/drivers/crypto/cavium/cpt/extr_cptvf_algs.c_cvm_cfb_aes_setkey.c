
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_ablkcipher {int dummy; } ;


 int AES_CFB ;
 int cvm_setkey (struct crypto_ablkcipher*,int const*,int ,int ) ;

__attribute__((used)) static int cvm_cfb_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
         u32 keylen)
{
 return cvm_setkey(cipher, key, keylen, AES_CFB);
}
