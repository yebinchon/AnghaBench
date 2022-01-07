
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;


 int ICP_QAT_HW_CIPHER_XTS_MODE ;
 int qat_alg_ablkcipher_setkey (struct crypto_ablkcipher*,int const*,unsigned int,int ) ;

__attribute__((used)) static int qat_alg_ablkcipher_xts_setkey(struct crypto_ablkcipher *tfm,
      const u8 *key, unsigned int keylen)
{
 return qat_alg_ablkcipher_setkey(tfm, key, keylen,
      ICP_QAT_HW_CIPHER_XTS_MODE);
}
