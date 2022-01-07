
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_sync_entry {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int amdgpu_sync_slab ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;

int amdgpu_sync_init(void)
{
 amdgpu_sync_slab = kmem_cache_create(
  "amdgpu_sync", sizeof(struct amdgpu_sync_entry), 0,
  SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!amdgpu_sync_slab)
  return -ENOMEM;

 return 0;
}
