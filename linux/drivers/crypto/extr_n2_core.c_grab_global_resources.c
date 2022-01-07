
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NR_CPUS ;
 int * cpu_to_cwq ;
 void* cpu_to_mau ;
 int global_ref ;
 void* kcalloc (int ,int,int ) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int n2_spu_hvapi_register () ;
 int n2_spu_hvapi_unregister () ;
 int queue_cache_destroy () ;
 int queue_cache_init () ;
 int spu_lock ;

__attribute__((used)) static int grab_global_resources(void)
{
 int err = 0;

 mutex_lock(&spu_lock);

 if (global_ref++)
  goto out;

 err = n2_spu_hvapi_register();
 if (err)
  goto out;

 err = queue_cache_init();
 if (err)
  goto out_hvapi_release;

 err = -ENOMEM;
 cpu_to_cwq = kcalloc(NR_CPUS, sizeof(struct spu_queue *),
        GFP_KERNEL);
 if (!cpu_to_cwq)
  goto out_queue_cache_destroy;

 cpu_to_mau = kcalloc(NR_CPUS, sizeof(struct spu_queue *),
        GFP_KERNEL);
 if (!cpu_to_mau)
  goto out_free_cwq_table;

 err = 0;

out:
 if (err)
  global_ref--;
 mutex_unlock(&spu_lock);
 return err;

out_free_cwq_table:
 kfree(cpu_to_cwq);
 cpu_to_cwq = ((void*)0);

out_queue_cache_destroy:
 queue_cache_destroy();

out_hvapi_release:
 n2_spu_hvapi_unregister();
 goto out;
}
