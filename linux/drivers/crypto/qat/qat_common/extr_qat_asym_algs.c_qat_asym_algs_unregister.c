
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ active_devs ;
 int algs_lock ;
 int crypto_unregister_akcipher (int *) ;
 int crypto_unregister_kpp (int *) ;
 int dh ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rsa ;

void qat_asym_algs_unregister(void)
{
 mutex_lock(&algs_lock);
 if (--active_devs == 0) {
  crypto_unregister_akcipher(&rsa);
  crypto_unregister_kpp(&dh);
 }
 mutex_unlock(&algs_lock);
}
