
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int SOFT_RESET_VCE ;
 int SRBM_SOFT_RESET ;
 int WREG32_FIELD (int ,int ,int) ;
 int mdelay (int) ;
 int vce_v2_0_start (struct amdgpu_device*) ;

__attribute__((used)) static int vce_v2_0_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 WREG32_FIELD(SRBM_SOFT_RESET, SOFT_RESET_VCE, 1);
 mdelay(5);

 return vce_v2_0_start(adev);
}
