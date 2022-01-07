
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dev; } ;


 int amdgpu_vm_block_size ;
 int dev_warn (int ,char*,int) ;

__attribute__((used)) static void amdgpu_device_check_block_size(struct amdgpu_device *adev)
{



 if (amdgpu_vm_block_size == -1)
  return;

 if (amdgpu_vm_block_size < 9) {
  dev_warn(adev->dev, "VM page table size (%d) too small\n",
    amdgpu_vm_block_size);
  amdgpu_vm_block_size = -1;
 }
}
