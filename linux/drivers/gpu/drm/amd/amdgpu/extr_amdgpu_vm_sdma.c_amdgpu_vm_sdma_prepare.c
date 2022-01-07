
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct amdgpu_vm_update_params {unsigned int num_dw_left; TYPE_6__* job; int adev; TYPE_2__* vm; } ;
struct TYPE_9__ {int resv; } ;
struct TYPE_10__ {TYPE_3__ base; } ;
struct amdgpu_bo {TYPE_4__ tbo; } ;
struct TYPE_12__ {int sync; } ;
struct TYPE_11__ {struct amdgpu_bo* bo; } ;
struct TYPE_7__ {TYPE_5__ base; } ;
struct TYPE_8__ {TYPE_1__ root; } ;


 unsigned int AMDGPU_VM_SDMA_MIN_NUM_DW ;
 int amdgpu_job_alloc_with_ib (int ,unsigned int,TYPE_6__**) ;
 int amdgpu_sync_fence (int ,int *,struct dma_fence*,int) ;
 int amdgpu_sync_resv (int ,int *,int ,void*,int) ;

__attribute__((used)) static int amdgpu_vm_sdma_prepare(struct amdgpu_vm_update_params *p,
      void *owner, struct dma_fence *exclusive)
{
 struct amdgpu_bo *root = p->vm->root.base.bo;
 unsigned int ndw = AMDGPU_VM_SDMA_MIN_NUM_DW;
 int r;

 r = amdgpu_job_alloc_with_ib(p->adev, ndw * 4, &p->job);
 if (r)
  return r;

 r = amdgpu_sync_fence(p->adev, &p->job->sync, exclusive, 0);
 if (r)
  return r;

 r = amdgpu_sync_resv(p->adev, &p->job->sync, root->tbo.base.resv,
        owner, 0);
 if (r)
  return r;

 p->num_dw_left = ndw;
 return 0;
}
