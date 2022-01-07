
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_handles; int num_uvd_inst; int harvest_config; TYPE_1__* inst; int * handles; int idle_work; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_2__ uvd; } ;
struct TYPE_3__ {int saved_bo; void* cpu_addr; int * vcpu_bo; } ;


 scalar_t__ CHIP_POLARIS10 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int amdgpu_bo_size (int *) ;
 scalar_t__ atomic_read (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int kvmalloc (unsigned int,int ) ;
 int memcpy_fromio (int ,void*,unsigned int) ;

int amdgpu_uvd_suspend(struct amdgpu_device *adev)
{
 unsigned size;
 void *ptr;
 int i, j;

 cancel_delayed_work_sync(&adev->uvd.idle_work);


 if (adev->asic_type < CHIP_POLARIS10) {
  for (i = 0; i < adev->uvd.max_handles; ++i)
   if (atomic_read(&adev->uvd.handles[i]))
    break;

  if (i == adev->uvd.max_handles)
   return 0;
 }

 for (j = 0; j < adev->uvd.num_uvd_inst; ++j) {
  if (adev->uvd.harvest_config & (1 << j))
   continue;
  if (adev->uvd.inst[j].vcpu_bo == ((void*)0))
   continue;

  size = amdgpu_bo_size(adev->uvd.inst[j].vcpu_bo);
  ptr = adev->uvd.inst[j].cpu_addr;

  adev->uvd.inst[j].saved_bo = kvmalloc(size, GFP_KERNEL);
  if (!adev->uvd.inst[j].saved_bo)
   return -ENOMEM;

  memcpy_fromio(adev->uvd.inst[j].saved_bo, ptr, size);
 }
 return 0;
}
