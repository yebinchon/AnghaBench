
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resv; } ;
struct TYPE_4__ {int num_pages; TYPE_1__ base; } ;
struct amdgpu_bo {int flags; int kmap; TYPE_2__ tbo; } ;


 int AMDGPU_GEM_CREATE_NO_CPU_ACCESS ;
 int EPERM ;
 int MAX_SCHEDULE_TIMEOUT ;
 void* amdgpu_bo_kptr (struct amdgpu_bo*) ;
 long dma_resv_wait_timeout_rcu (int ,int,int,int ) ;
 long ttm_bo_kmap (TYPE_2__*,int ,int ,int *) ;

int amdgpu_bo_kmap(struct amdgpu_bo *bo, void **ptr)
{
 void *kptr;
 long r;

 if (bo->flags & AMDGPU_GEM_CREATE_NO_CPU_ACCESS)
  return -EPERM;

 kptr = amdgpu_bo_kptr(bo);
 if (kptr) {
  if (ptr)
   *ptr = kptr;
  return 0;
 }

 r = dma_resv_wait_timeout_rcu(bo->tbo.base.resv, 0, 0,
      MAX_SCHEDULE_TIMEOUT);
 if (r < 0)
  return r;

 r = ttm_bo_kmap(&bo->tbo, 0, bo->tbo.num_pages, &bo->kmap);
 if (r)
  return r;

 if (ptr)
  *ptr = amdgpu_bo_kptr(bo);

 return 0;
}
