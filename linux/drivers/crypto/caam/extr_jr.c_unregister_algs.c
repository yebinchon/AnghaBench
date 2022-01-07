
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ active_devs ;
 int algs_lock ;
 int caam_algapi_exit () ;
 int caam_algapi_hash_exit () ;
 int caam_pkc_exit () ;
 int caam_qi_algapi_exit () ;
 int caam_rng_exit () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void unregister_algs(void)
{
 mutex_lock(&algs_lock);

 if (--active_devs != 0)
  goto algs_unlock;

 caam_qi_algapi_exit();

 caam_rng_exit();
 caam_pkc_exit();
 caam_algapi_hash_exit();
 caam_algapi_exit();

algs_unlock:
 mutex_unlock(&algs_lock);
}
