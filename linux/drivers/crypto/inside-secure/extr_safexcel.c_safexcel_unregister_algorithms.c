
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int algo_flags; } ;
struct safexcel_crypto_priv {TYPE_1__ hwconfig; } ;
struct TYPE_6__ {int ahash; int aead; int skcipher; } ;
struct TYPE_7__ {int algo_mask; scalar_t__ type; TYPE_2__ alg; } ;


 int ARRAY_SIZE (TYPE_3__**) ;
 scalar_t__ SAFEXCEL_ALG_TYPE_AEAD ;
 scalar_t__ SAFEXCEL_ALG_TYPE_SKCIPHER ;
 int crypto_unregister_aead (int *) ;
 int crypto_unregister_ahash (int *) ;
 int crypto_unregister_skcipher (int *) ;
 TYPE_3__** safexcel_algs ;

__attribute__((used)) static void safexcel_unregister_algorithms(struct safexcel_crypto_priv *priv)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(safexcel_algs); i++) {

  if ((safexcel_algs[i]->algo_mask & priv->hwconfig.algo_flags) !=
      safexcel_algs[i]->algo_mask)

   continue;

  if (safexcel_algs[i]->type == SAFEXCEL_ALG_TYPE_SKCIPHER)
   crypto_unregister_skcipher(&safexcel_algs[i]->alg.skcipher);
  else if (safexcel_algs[i]->type == SAFEXCEL_ALG_TYPE_AEAD)
   crypto_unregister_aead(&safexcel_algs[i]->alg.aead);
  else
   crypto_unregister_ahash(&safexcel_algs[i]->alg.ahash);
 }
}
