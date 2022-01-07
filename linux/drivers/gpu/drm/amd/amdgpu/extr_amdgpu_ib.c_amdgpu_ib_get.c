
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_vm {int dummy; } ;
struct amdgpu_ib {int sa_bo; int gpu_addr; int ptr; } ;
struct amdgpu_device {int dev; int ring_tmp_bo; } ;


 int amdgpu_sa_bo_cpu_addr (int ) ;
 int amdgpu_sa_bo_gpu_addr (int ) ;
 int amdgpu_sa_bo_new (int *,int *,unsigned int,int) ;
 int dev_err (int ,char*,int) ;

int amdgpu_ib_get(struct amdgpu_device *adev, struct amdgpu_vm *vm,
    unsigned size, struct amdgpu_ib *ib)
{
 int r;

 if (size) {
  r = amdgpu_sa_bo_new(&adev->ring_tmp_bo,
          &ib->sa_bo, size, 256);
  if (r) {
   dev_err(adev->dev, "failed to get a new IB (%d)\n", r);
   return r;
  }

  ib->ptr = amdgpu_sa_bo_cpu_addr(ib->sa_bo);

  if (!vm)
   ib->gpu_addr = amdgpu_sa_bo_gpu_addr(ib->sa_bo);
 }

 return 0;
}
