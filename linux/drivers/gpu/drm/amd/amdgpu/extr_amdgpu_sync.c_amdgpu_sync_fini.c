
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amdgpu_sync_slab ;
 int kmem_cache_destroy (int ) ;

void amdgpu_sync_fini(void)
{
 kmem_cache_destroy(amdgpu_sync_slab);
}
