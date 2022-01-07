
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caam_skcipher_alg {int skcipher; scalar_t__ registered; } ;
struct caam_aead_alg {int aead; scalar_t__ registered; } ;


 int ARRAY_SIZE (void*) ;
 int crypto_unregister_aead (int *) ;
 int crypto_unregister_skcipher (int *) ;
 void* driver_aeads ;
 void* driver_algs ;

void caam_qi_algapi_exit(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(driver_aeads); i++) {
  struct caam_aead_alg *t_alg = driver_aeads + i;

  if (t_alg->registered)
   crypto_unregister_aead(&t_alg->aead);
 }

 for (i = 0; i < ARRAY_SIZE(driver_algs); i++) {
  struct caam_skcipher_alg *t_alg = driver_algs + i;

  if (t_alg->registered)
   crypto_unregister_skcipher(&t_alg->skcipher);
 }
}
