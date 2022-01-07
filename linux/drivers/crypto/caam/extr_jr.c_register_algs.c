
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int active_devs ;
 int algs_lock ;
 int caam_algapi_hash_init (struct device*) ;
 int caam_algapi_init (struct device*) ;
 int caam_pkc_init (struct device*) ;
 int caam_qi_algapi_init (struct device*) ;
 int caam_rng_init (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void register_algs(struct device *dev)
{
 mutex_lock(&algs_lock);

 if (++active_devs != 1)
  goto algs_unlock;

 caam_algapi_init(dev);
 caam_algapi_hash_init(dev);
 caam_pkc_init(dev);
 caam_rng_init(dev);
 caam_qi_algapi_init(dev);

algs_unlock:
 mutex_unlock(&algs_lock);
}
