
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __n2_unregister_algs () ;
 int algs_registered ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spu_lock ;

__attribute__((used)) static void n2_unregister_algs(void)
{
 mutex_lock(&spu_lock);
 if (!--algs_registered)
  __n2_unregister_algs();
 mutex_unlock(&spu_lock);
}
