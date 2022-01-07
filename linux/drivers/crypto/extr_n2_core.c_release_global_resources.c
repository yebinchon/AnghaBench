
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cpu_to_cwq ;
 int * cpu_to_mau ;
 int global_ref ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int n2_spu_hvapi_unregister () ;
 int queue_cache_destroy () ;
 int spu_lock ;

__attribute__((used)) static void release_global_resources(void)
{
 mutex_lock(&spu_lock);
 if (!--global_ref) {
  kfree(cpu_to_cwq);
  cpu_to_cwq = ((void*)0);

  kfree(cpu_to_mau);
  cpu_to_mau = ((void*)0);

  queue_cache_destroy();
  n2_spu_hvapi_unregister();
 }
 mutex_unlock(&spu_lock);
}
