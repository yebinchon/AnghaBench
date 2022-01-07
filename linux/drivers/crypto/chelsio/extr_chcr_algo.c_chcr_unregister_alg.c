
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hash; int aead; int crypto; } ;
struct TYPE_5__ {int type; scalar_t__ is_registered; TYPE_1__ alg; } ;


 int ARRAY_SIZE (TYPE_2__*) ;



 int CRYPTO_ALG_TYPE_MASK ;
 int crypto_unregister_aead (int *) ;
 int crypto_unregister_ahash (int *) ;
 int crypto_unregister_alg (int *) ;
 TYPE_2__* driver_algs ;

__attribute__((used)) static int chcr_unregister_alg(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(driver_algs); i++) {
  switch (driver_algs[i].type & CRYPTO_ALG_TYPE_MASK) {
  case 130:
   if (driver_algs[i].is_registered)
    crypto_unregister_alg(
      &driver_algs[i].alg.crypto);
   break;
  case 129:
   if (driver_algs[i].is_registered)
    crypto_unregister_aead(
      &driver_algs[i].alg.aead);
   break;
  case 128:
   if (driver_algs[i].is_registered)
    crypto_unregister_ahash(
      &driver_algs[i].alg.hash);
   break;
  }
  driver_algs[i].is_registered = 0;
 }
 return 0;
}
