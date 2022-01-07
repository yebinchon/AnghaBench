
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int BIF_FB_EN__FB_READ_EN_MASK ;
 int BIF_FB_EN__FB_WRITE_EN_MASK ;
 int NBIO ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmBIF_FB_EN ;

__attribute__((used)) static void nbio_v7_0_mc_access_enable(struct amdgpu_device *adev, bool enable)
{
 if (enable)
  WREG32_SOC15(NBIO, 0, mmBIF_FB_EN,
   BIF_FB_EN__FB_READ_EN_MASK | BIF_FB_EN__FB_WRITE_EN_MASK);
 else
  WREG32_SOC15(NBIO, 0, mmBIF_FB_EN, 0);
}
