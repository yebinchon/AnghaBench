
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amdgpu_fence_slab ;
 int kmem_cache_destroy (int ) ;
 int rcu_barrier () ;

void amdgpu_fence_slab_fini(void)
{
 rcu_barrier();
 kmem_cache_destroy(amdgpu_fence_slab);
}
