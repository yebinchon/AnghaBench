
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ load_type; int fw_size; int fw_buf_ptr; int fw_buf; int fw_buf_mc; } ;
struct amdgpu_device {TYPE_1__ firmware; int dev; } ;


 scalar_t__ AMDGPU_FW_LOAD_DIRECT ;
 int AMDGPU_GEM_DOMAIN_GTT ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int ,int ,int ,int *,int *,int *) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int dev_err (int ,char*) ;
 int memset (int ,int ,int ) ;

int amdgpu_ucode_create_bo(struct amdgpu_device *adev)
{
 if (adev->firmware.load_type != AMDGPU_FW_LOAD_DIRECT) {
  amdgpu_bo_create_kernel(adev, adev->firmware.fw_size, PAGE_SIZE,
   amdgpu_sriov_vf(adev) ? AMDGPU_GEM_DOMAIN_VRAM : AMDGPU_GEM_DOMAIN_GTT,
   &adev->firmware.fw_buf,
   &adev->firmware.fw_buf_mc,
   &adev->firmware.fw_buf_ptr);
  if (!adev->firmware.fw_buf) {
   dev_err(adev->dev, "failed to create kernel buffer for firmware.fw_buf\n");
   return -ENOMEM;
  } else if (amdgpu_sriov_vf(adev)) {
   memset(adev->firmware.fw_buf_ptr, 0, adev->firmware.fw_size);
  }
 }
 return 0;
}
