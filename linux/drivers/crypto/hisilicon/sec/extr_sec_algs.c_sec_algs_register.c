
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int active_devs ;
 int algs_lock ;
 int crypto_register_skciphers (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sec_algs ;

int sec_algs_register(void)
{
 int ret = 0;

 mutex_lock(&algs_lock);
 if (++active_devs != 1)
  goto unlock;

 ret = crypto_register_skciphers(sec_algs, ARRAY_SIZE(sec_algs));
 if (ret)
  --active_devs;
unlock:
 mutex_unlock(&algs_lock);

 return ret;
}
