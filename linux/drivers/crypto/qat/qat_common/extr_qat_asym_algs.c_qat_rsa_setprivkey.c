
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_akcipher {int dummy; } ;


 int qat_rsa_setkey (struct crypto_akcipher*,void const*,unsigned int,int) ;

__attribute__((used)) static int qat_rsa_setprivkey(struct crypto_akcipher *tfm, const void *key,
         unsigned int keylen)
{
 return qat_rsa_setkey(tfm, key, keylen, 1);
}
