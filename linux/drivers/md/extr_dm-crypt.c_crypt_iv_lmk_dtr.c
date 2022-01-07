
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iv_lmk_private {int * seed; int * hash_tfm; } ;
struct TYPE_2__ {struct iv_lmk_private lmk; } ;
struct crypt_config {TYPE_1__ iv_gen_private; } ;


 int IS_ERR (int *) ;
 int crypto_free_shash (int *) ;
 int kzfree (int *) ;

__attribute__((used)) static void crypt_iv_lmk_dtr(struct crypt_config *cc)
{
 struct iv_lmk_private *lmk = &cc->iv_gen_private.lmk;

 if (lmk->hash_tfm && !IS_ERR(lmk->hash_tfm))
  crypto_free_shash(lmk->hash_tfm);
 lmk->hash_tfm = ((void*)0);

 kzfree(lmk->seed);
 lmk->seed = ((void*)0);
}
