
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cra_flags; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int active_devs ;
 int algs_lock ;
 int crypto_register_akcipher (TYPE_2__*) ;
 int crypto_register_kpp (int *) ;
 int dh ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__ rsa ;

int qat_asym_algs_register(void)
{
 int ret = 0;

 mutex_lock(&algs_lock);
 if (++active_devs == 1) {
  rsa.base.cra_flags = 0;
  ret = crypto_register_akcipher(&rsa);
  if (ret)
   goto unlock;
  ret = crypto_register_kpp(&dh);
 }
unlock:
 mutex_unlock(&algs_lock);
 return ret;
}
