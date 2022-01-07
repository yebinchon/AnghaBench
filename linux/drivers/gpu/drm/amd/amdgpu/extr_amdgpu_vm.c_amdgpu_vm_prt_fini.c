
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_9__ {TYPE_3__* bo; } ;
struct TYPE_10__ {TYPE_4__ base; } ;
struct amdgpu_vm {TYPE_5__ root; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_6__ {struct dma_resv* resv; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct TYPE_8__ {TYPE_2__ tbo; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 int amdgpu_vm_add_prt_cb (struct amdgpu_device*,struct dma_fence*) ;
 int amdgpu_vm_prt_get (struct amdgpu_device*) ;
 int dma_resv_get_fences_rcu (struct dma_resv*,struct dma_fence**,unsigned int*,struct dma_fence***) ;
 int dma_resv_wait_timeout_rcu (struct dma_resv*,int,int,int ) ;
 int kfree (struct dma_fence**) ;

__attribute__((used)) static void amdgpu_vm_prt_fini(struct amdgpu_device *adev, struct amdgpu_vm *vm)
{
 struct dma_resv *resv = vm->root.base.bo->tbo.base.resv;
 struct dma_fence *excl, **shared;
 unsigned i, shared_count;
 int r;

 r = dma_resv_get_fences_rcu(resv, &excl,
           &shared_count, &shared);
 if (r) {



  dma_resv_wait_timeout_rcu(resv, 1, 0,
          MAX_SCHEDULE_TIMEOUT);
  return;
 }


 amdgpu_vm_prt_get(adev);
 amdgpu_vm_add_prt_cb(adev, excl);

 for (i = 0; i < shared_count; ++i) {
  amdgpu_vm_prt_get(adev);
  amdgpu_vm_add_prt_cb(adev, shared[i]);
 }

 kfree(shared);
}
