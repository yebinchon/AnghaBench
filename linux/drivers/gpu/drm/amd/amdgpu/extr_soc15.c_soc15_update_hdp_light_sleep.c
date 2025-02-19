
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {scalar_t__ asic_type; int cg_flags; } ;


 int AMD_CG_SUPPORT_HDP_LS ;
 scalar_t__ CHIP_ARCTURUS ;
 scalar_t__ CHIP_VEGA20 ;
 int HDP ;
 int HDP_MEM_POWER_CTRL__IPH_MEM_POWER_CTRL_EN_MASK ;
 int HDP_MEM_POWER_CTRL__IPH_MEM_POWER_LS_EN_MASK ;
 int HDP_MEM_POWER_CTRL__RC_MEM_POWER_CTRL_EN_MASK ;
 int HDP_MEM_POWER_CTRL__RC_MEM_POWER_LS_EN_MASK ;
 int HDP_MEM_POWER_LS__LS_ENABLE_MASK ;
 int RREG32 (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int) ;
 int mmHDP_MEM_POWER_CTRL ;
 int mmHDP_MEM_POWER_LS ;

__attribute__((used)) static void soc15_update_hdp_light_sleep(struct amdgpu_device *adev, bool enable)
{
 uint32_t def, data;

 if (adev->asic_type == CHIP_VEGA20 ||
  adev->asic_type == CHIP_ARCTURUS) {
  def = data = RREG32(SOC15_REG_OFFSET(HDP, 0, mmHDP_MEM_POWER_CTRL));

  if (enable && (adev->cg_flags & AMD_CG_SUPPORT_HDP_LS))
   data |= HDP_MEM_POWER_CTRL__IPH_MEM_POWER_CTRL_EN_MASK |
    HDP_MEM_POWER_CTRL__IPH_MEM_POWER_LS_EN_MASK |
    HDP_MEM_POWER_CTRL__RC_MEM_POWER_CTRL_EN_MASK |
    HDP_MEM_POWER_CTRL__RC_MEM_POWER_LS_EN_MASK;
  else
   data &= ~(HDP_MEM_POWER_CTRL__IPH_MEM_POWER_CTRL_EN_MASK |
    HDP_MEM_POWER_CTRL__IPH_MEM_POWER_LS_EN_MASK |
    HDP_MEM_POWER_CTRL__RC_MEM_POWER_CTRL_EN_MASK |
    HDP_MEM_POWER_CTRL__RC_MEM_POWER_LS_EN_MASK);

  if (def != data)
   WREG32(SOC15_REG_OFFSET(HDP, 0, mmHDP_MEM_POWER_CTRL), data);
 } else {
  def = data = RREG32(SOC15_REG_OFFSET(HDP, 0, mmHDP_MEM_POWER_LS));

  if (enable && (adev->cg_flags & AMD_CG_SUPPORT_HDP_LS))
   data |= HDP_MEM_POWER_LS__LS_ENABLE_MASK;
  else
   data &= ~HDP_MEM_POWER_LS__LS_ENABLE_MASK;

  if (def != data)
   WREG32(SOC15_REG_OFFSET(HDP, 0, mmHDP_MEM_POWER_LS), data);
 }
}
