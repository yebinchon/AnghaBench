
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 scalar_t__ active_devs ;
 int algs_lock ;
 int crypto_unregister_skciphers (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sec_algs ;

void sec_algs_unregister(void)
{
 mutex_lock(&algs_lock);
 if (--active_devs != 0)
  goto unlock;
 crypto_unregister_skciphers(sec_algs, ARRAY_SIZE(sec_algs));

unlock:
 mutex_unlock(&algs_lock);
}
