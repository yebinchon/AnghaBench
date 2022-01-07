
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dev; } ;


 int amdgpu_vm_size ;
 int dev_warn (int ,char*,int) ;

__attribute__((used)) static void amdgpu_device_check_vm_size(struct amdgpu_device *adev)
{

 if (amdgpu_vm_size == -1)
  return;

 if (amdgpu_vm_size < 1) {
  dev_warn(adev->dev, "VM size (%d) too small, min is 1GB\n",
    amdgpu_vm_size);
  amdgpu_vm_size = -1;
 }
}
