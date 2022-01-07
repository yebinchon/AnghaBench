
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_resv_list {unsigned int shared_count; int * shared; } ;
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_sync {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 void* AMDGPU_FENCE_OWNER_KFD ;
 void* AMDGPU_FENCE_OWNER_UNDEFINED ;
 void* AMDGPU_FENCE_OWNER_VM ;
 int EINVAL ;
 int amdgpu_sync_fence (struct amdgpu_device*,struct amdgpu_sync*,struct dma_fence*,int) ;
 void* amdgpu_sync_get_owner (struct dma_fence*) ;
 scalar_t__ amdgpu_sync_same_dev (struct amdgpu_device*,struct dma_fence*) ;
 struct dma_fence* dma_resv_get_excl (struct dma_resv*) ;
 struct dma_resv_list* dma_resv_get_list (struct dma_resv*) ;
 int dma_resv_held (struct dma_resv*) ;
 struct dma_fence* rcu_dereference_protected (int ,int ) ;

int amdgpu_sync_resv(struct amdgpu_device *adev,
       struct amdgpu_sync *sync,
       struct dma_resv *resv,
       void *owner, bool explicit_sync)
{
 struct dma_resv_list *flist;
 struct dma_fence *f;
 void *fence_owner;
 unsigned i;
 int r = 0;

 if (resv == ((void*)0))
  return -EINVAL;


 f = dma_resv_get_excl(resv);
 r = amdgpu_sync_fence(adev, sync, f, 0);

 flist = dma_resv_get_list(resv);
 if (!flist || r)
  return r;

 for (i = 0; i < flist->shared_count; ++i) {
  f = rcu_dereference_protected(flist->shared[i],
           dma_resv_held(resv));



  fence_owner = amdgpu_sync_get_owner(f);
  if (fence_owner == AMDGPU_FENCE_OWNER_KFD &&
      owner != AMDGPU_FENCE_OWNER_UNDEFINED)
   continue;

  if (amdgpu_sync_same_dev(adev, f)) {



   if ((owner != AMDGPU_FENCE_OWNER_UNDEFINED) &&
       (fence_owner != AMDGPU_FENCE_OWNER_UNDEFINED) &&
       ((owner == AMDGPU_FENCE_OWNER_VM) !=
        (fence_owner == AMDGPU_FENCE_OWNER_VM)))
    continue;




   if (owner != AMDGPU_FENCE_OWNER_UNDEFINED &&
       (fence_owner == owner || explicit_sync))
    continue;
  }

  r = amdgpu_sync_fence(adev, sync, f, 0);
  if (r)
   break;
 }
 return r;
}
