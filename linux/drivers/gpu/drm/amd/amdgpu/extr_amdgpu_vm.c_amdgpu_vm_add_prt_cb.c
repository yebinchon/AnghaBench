
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct amdgpu_prt_cb {int cb; struct amdgpu_device* adev; } ;
struct TYPE_4__ {TYPE_1__* gmc_funcs; } ;
struct amdgpu_device {TYPE_2__ gmc; } ;
struct TYPE_3__ {int set_prt; } ;


 int GFP_KERNEL ;
 int amdgpu_vm_prt_cb (struct dma_fence*,int *) ;
 int amdgpu_vm_prt_put (struct amdgpu_device*) ;
 scalar_t__ dma_fence_add_callback (struct dma_fence*,int *,int (*) (struct dma_fence*,int *)) ;
 int dma_fence_wait (struct dma_fence*,int) ;
 struct amdgpu_prt_cb* kmalloc (int,int ) ;

__attribute__((used)) static void amdgpu_vm_add_prt_cb(struct amdgpu_device *adev,
     struct dma_fence *fence)
{
 struct amdgpu_prt_cb *cb;

 if (!adev->gmc.gmc_funcs->set_prt)
  return;

 cb = kmalloc(sizeof(struct amdgpu_prt_cb), GFP_KERNEL);
 if (!cb) {

  if (fence)
   dma_fence_wait(fence, 0);

  amdgpu_vm_prt_put(adev);
 } else {
  cb->adev = adev;
  if (!fence || dma_fence_add_callback(fence, &cb->cb,
           amdgpu_vm_prt_cb))
   amdgpu_vm_prt_cb(fence, &cb->cb);
 }
}
