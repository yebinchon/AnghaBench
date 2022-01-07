
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iv_tcw_private {int * crc32_tfm; int * whitening; int * iv_seed; } ;
struct TYPE_2__ {struct iv_tcw_private tcw; } ;
struct crypt_config {TYPE_1__ iv_gen_private; } ;


 int IS_ERR (int *) ;
 int crypto_free_shash (int *) ;
 int kzfree (int *) ;

__attribute__((used)) static void crypt_iv_tcw_dtr(struct crypt_config *cc)
{
 struct iv_tcw_private *tcw = &cc->iv_gen_private.tcw;

 kzfree(tcw->iv_seed);
 tcw->iv_seed = ((void*)0);
 kzfree(tcw->whitening);
 tcw->whitening = ((void*)0);

 if (tcw->crc32_tfm && !IS_ERR(tcw->crc32_tfm))
  crypto_free_shash(tcw->crc32_tfm);
 tcw->crc32_tfm = ((void*)0);
}
