
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int PWR ;
 int PWR_MISC_CNTL_STATUS__PWR_GFXOFF_STATUS_MASK ;
 int PWR_MISC_CNTL_STATUS__PWR_GFXOFF_STATUS__SHIFT ;
 int PWR_MISC_CNTL_STATUS__PWR_GFX_RLC_CGPG_EN_MASK ;
 int RREG32 (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int) ;
 int mmPWR_MISC_CNTL_STATUS ;

__attribute__((used)) static void pwr_10_0_gfxip_control_over_cgpg(struct amdgpu_device *adev,
          bool enable)
{
 uint32_t data = 0;
 uint32_t default_data = 0;

 default_data = data = RREG32(SOC15_REG_OFFSET(PWR, 0, mmPWR_MISC_CNTL_STATUS));
 if (enable == 1) {

  data |= PWR_MISC_CNTL_STATUS__PWR_GFX_RLC_CGPG_EN_MASK;
  if(default_data != data)
   WREG32(SOC15_REG_OFFSET(PWR, 0, mmPWR_MISC_CNTL_STATUS), data);


  data &= ~PWR_MISC_CNTL_STATUS__PWR_GFXOFF_STATUS_MASK;
  data |= (2 << PWR_MISC_CNTL_STATUS__PWR_GFXOFF_STATUS__SHIFT);
  if(default_data != data)
   WREG32(SOC15_REG_OFFSET(PWR, 0, mmPWR_MISC_CNTL_STATUS), data);
 } else {

  data &= ~PWR_MISC_CNTL_STATUS__PWR_GFX_RLC_CGPG_EN_MASK;
  if(default_data != data)
   WREG32(SOC15_REG_OFFSET(PWR, 0, mmPWR_MISC_CNTL_STATUS), data);
 }
}
