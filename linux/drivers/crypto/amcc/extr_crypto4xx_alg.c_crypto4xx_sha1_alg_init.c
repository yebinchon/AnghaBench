
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int SA_HASH160_LEN ;
 int SA_HASH_ALG_SHA1 ;
 int SA_HASH_MODE_HASH ;
 int crypto4xx_hash_alg_init (struct crypto_tfm*,int ,int ,int ) ;

int crypto4xx_sha1_alg_init(struct crypto_tfm *tfm)
{
 return crypto4xx_hash_alg_init(tfm, SA_HASH160_LEN, SA_HASH_ALG_SHA1,
           SA_HASH_MODE_HASH);
}
