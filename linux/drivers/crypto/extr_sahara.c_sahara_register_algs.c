
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_dev {scalar_t__ version; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ SAHARA_VERSION_3 ;
 int * aes_algs ;
 int crypto_register_ahash (int *) ;
 int crypto_register_alg (int *) ;
 int crypto_unregister_ahash (int *) ;
 int crypto_unregister_alg (int *) ;
 int * sha_v3_algs ;
 int * sha_v4_algs ;

__attribute__((used)) static int sahara_register_algs(struct sahara_dev *dev)
{
 int err;
 unsigned int i, j, k, l;

 for (i = 0; i < ARRAY_SIZE(aes_algs); i++) {
  err = crypto_register_alg(&aes_algs[i]);
  if (err)
   goto err_aes_algs;
 }

 for (k = 0; k < ARRAY_SIZE(sha_v3_algs); k++) {
  err = crypto_register_ahash(&sha_v3_algs[k]);
  if (err)
   goto err_sha_v3_algs;
 }

 if (dev->version > SAHARA_VERSION_3)
  for (l = 0; l < ARRAY_SIZE(sha_v4_algs); l++) {
   err = crypto_register_ahash(&sha_v4_algs[l]);
   if (err)
    goto err_sha_v4_algs;
  }

 return 0;

err_sha_v4_algs:
 for (j = 0; j < l; j++)
  crypto_unregister_ahash(&sha_v4_algs[j]);

err_sha_v3_algs:
 for (j = 0; j < k; j++)
  crypto_unregister_ahash(&sha_v3_algs[j]);

err_aes_algs:
 for (j = 0; j < i; j++)
  crypto_unregister_alg(&aes_algs[j]);

 return err;
}
