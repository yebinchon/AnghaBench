
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int context; } ;
struct amdgpu_sync_entry {int explicit; int fence; int node; } ;
struct amdgpu_sync {int fences; int last_vm_update; } ;
struct amdgpu_device {int dummy; } ;


 scalar_t__ AMDGPU_FENCE_OWNER_VM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ amdgpu_sync_add_later (struct amdgpu_sync*,struct dma_fence*,int) ;
 scalar_t__ amdgpu_sync_get_owner (struct dma_fence*) ;
 int amdgpu_sync_keep_later (int *,struct dma_fence*) ;
 scalar_t__ amdgpu_sync_same_dev (struct amdgpu_device*,struct dma_fence*) ;
 int amdgpu_sync_slab ;
 int dma_fence_get (struct dma_fence*) ;
 int hash_add (int ,int *,int ) ;
 struct amdgpu_sync_entry* kmem_cache_alloc (int ,int ) ;

int amdgpu_sync_fence(struct amdgpu_device *adev, struct amdgpu_sync *sync,
        struct dma_fence *f, bool explicit)
{
 struct amdgpu_sync_entry *e;

 if (!f)
  return 0;
 if (amdgpu_sync_same_dev(adev, f) &&
     amdgpu_sync_get_owner(f) == AMDGPU_FENCE_OWNER_VM)
  amdgpu_sync_keep_later(&sync->last_vm_update, f);

 if (amdgpu_sync_add_later(sync, f, explicit))
  return 0;

 e = kmem_cache_alloc(amdgpu_sync_slab, GFP_KERNEL);
 if (!e)
  return -ENOMEM;

 e->explicit = explicit;

 hash_add(sync->fences, &e->node, f->context);
 e->fence = dma_fence_get(f);
 return 0;
}
