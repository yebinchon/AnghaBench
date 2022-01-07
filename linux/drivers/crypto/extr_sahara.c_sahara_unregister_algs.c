
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_dev {scalar_t__ version; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ SAHARA_VERSION_3 ;
 int * aes_algs ;
 int crypto_unregister_ahash (int *) ;
 int crypto_unregister_alg (int *) ;
 int * sha_v3_algs ;
 int * sha_v4_algs ;

__attribute__((used)) static void sahara_unregister_algs(struct sahara_dev *dev)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(aes_algs); i++)
  crypto_unregister_alg(&aes_algs[i]);

 for (i = 0; i < ARRAY_SIZE(sha_v3_algs); i++)
  crypto_unregister_ahash(&sha_v3_algs[i]);

 if (dev->version > SAHARA_VERSION_3)
  for (i = 0; i < ARRAY_SIZE(sha_v4_algs); i++)
   crypto_unregister_ahash(&sha_v4_algs[i]);
}
