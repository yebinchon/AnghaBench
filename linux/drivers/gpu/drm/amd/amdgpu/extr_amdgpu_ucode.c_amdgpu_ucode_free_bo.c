
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ load_type; int fw_buf_ptr; int fw_buf_mc; int fw_buf; } ;
struct amdgpu_device {TYPE_1__ firmware; } ;


 scalar_t__ AMDGPU_FW_LOAD_DIRECT ;
 int amdgpu_bo_free_kernel (int *,int *,int *) ;

void amdgpu_ucode_free_bo(struct amdgpu_device *adev)
{
 if (adev->firmware.load_type != AMDGPU_FW_LOAD_DIRECT)
  amdgpu_bo_free_kernel(&adev->firmware.fw_buf,
  &adev->firmware.fw_buf_mc,
  &adev->firmware.fw_buf_ptr);
}
