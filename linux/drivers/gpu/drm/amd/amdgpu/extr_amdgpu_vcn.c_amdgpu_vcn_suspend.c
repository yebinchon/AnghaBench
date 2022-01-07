
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_vcn_inst; int harvest_config; TYPE_1__* inst; int idle_work; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;
struct TYPE_3__ {int saved_bo; void* cpu_addr; int * vcpu_bo; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int amdgpu_bo_size (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int kvmalloc (unsigned int,int ) ;
 int memcpy_fromio (int ,void*,unsigned int) ;

int amdgpu_vcn_suspend(struct amdgpu_device *adev)
{
 unsigned size;
 void *ptr;
 int i;

 cancel_delayed_work_sync(&adev->vcn.idle_work);

 for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
  if (adev->vcn.harvest_config & (1 << i))
   continue;
  if (adev->vcn.inst[i].vcpu_bo == ((void*)0))
   return 0;

  size = amdgpu_bo_size(adev->vcn.inst[i].vcpu_bo);
  ptr = adev->vcn.inst[i].cpu_addr;

  adev->vcn.inst[i].saved_bo = kvmalloc(size, GFP_KERNEL);
  if (!adev->vcn.inst[i].saved_bo)
   return -ENOMEM;

  memcpy_fromio(adev->vcn.inst[i].saved_bo, ptr, size);
 }
 return 0;
}
