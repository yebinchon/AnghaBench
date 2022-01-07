
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hash; int crypto; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ alg; } ;


 scalar_t__ ALG_TYPE_CIPHER ;
 unsigned int ARRAY_SIZE (TYPE_2__**) ;
 int crypto_unregister_ahash (int *) ;
 int crypto_unregister_alg (int *) ;
 TYPE_2__** rk_cipher_algs ;

__attribute__((used)) static void rk_crypto_unregister(void)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(rk_cipher_algs); i++) {
  if (rk_cipher_algs[i]->type == ALG_TYPE_CIPHER)
   crypto_unregister_alg(&rk_cipher_algs[i]->alg.crypto);
  else
   crypto_unregister_ahash(&rk_cipher_algs[i]->alg.hash);
 }
}
