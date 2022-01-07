
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int akcipher; scalar_t__ registered; } ;


 TYPE_1__ caam_rsa ;
 int crypto_unregister_akcipher (int *) ;
 int init_done ;
 int kfree (int ) ;
 int zero_buffer ;

void caam_pkc_exit(void)
{
 if (!init_done)
  return;

 if (caam_rsa.registered)
  crypto_unregister_akcipher(&caam_rsa.akcipher);

 kfree(zero_buffer);
}
