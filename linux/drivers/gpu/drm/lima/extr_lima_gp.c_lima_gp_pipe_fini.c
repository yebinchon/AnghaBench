
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_device {int dummy; } ;


 int kmem_cache_destroy (int *) ;
 int * lima_gp_task_slab ;
 int lima_gp_task_slab_refcnt ;

void lima_gp_pipe_fini(struct lima_device *dev)
{
 if (!--lima_gp_task_slab_refcnt) {
  kmem_cache_destroy(lima_gp_task_slab);
  lima_gp_task_slab = ((void*)0);
 }
}
