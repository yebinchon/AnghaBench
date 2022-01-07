
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_vmid_mgr {unsigned int num_ids; } ;
struct TYPE_2__ {struct amdgpu_vmid_mgr* id_mgr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 unsigned int AMDGPU_MAX_VMHUBS ;
 int amdgpu_vmid_reset (struct amdgpu_device*,unsigned int,unsigned int) ;

void amdgpu_vmid_reset_all(struct amdgpu_device *adev)
{
 unsigned i, j;

 for (i = 0; i < AMDGPU_MAX_VMHUBS; ++i) {
  struct amdgpu_vmid_mgr *id_mgr =
   &adev->vm_manager.id_mgr[i];

  for (j = 1; j < id_mgr->num_ids; ++j)
   amdgpu_vmid_reset(adev, i, j);
 }
}
