
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_fence {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int amdgpu_fence_slab ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;

int amdgpu_fence_slab_init(void)
{
 amdgpu_fence_slab = kmem_cache_create(
  "amdgpu_fence", sizeof(struct amdgpu_fence), 0,
  SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!amdgpu_fence_slab)
  return -ENOMEM;
 return 0;
}
