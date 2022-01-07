
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int *) ;
 int * lima_fence_slab ;
 int lima_fence_slab_refcnt ;

void lima_sched_slab_fini(void)
{
 if (!--lima_fence_slab_refcnt) {
  kmem_cache_destroy(lima_fence_slab);
  lima_fence_slab = ((void*)0);
 }
}
