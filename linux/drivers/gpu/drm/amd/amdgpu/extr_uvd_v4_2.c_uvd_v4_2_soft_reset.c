
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int SRBM_SOFT_RESET__SOFT_RESET_UVD_MASK ;
 int WREG32_P (int ,int ,int ) ;
 int mdelay (int) ;
 int mmSRBM_SOFT_RESET ;
 int uvd_v4_2_start (struct amdgpu_device*) ;
 int uvd_v4_2_stop (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v4_2_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 uvd_v4_2_stop(adev);

 WREG32_P(mmSRBM_SOFT_RESET, SRBM_SOFT_RESET__SOFT_RESET_UVD_MASK,
   ~SRBM_SOFT_RESET__SOFT_RESET_UVD_MASK);
 mdelay(5);

 return uvd_v4_2_start(adev);
}
