
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_HDP_MGCG ;
 int HDP ;
 int HDP_CLK_CNTL__DBUS_CLK_SOFT_OVERRIDE_MASK ;
 int HDP_CLK_CNTL__DYN_CLK_SOFT_OVERRIDE_MASK ;
 int HDP_CLK_CNTL__HDP_REG_CLK_SOFT_OVERRIDE_MASK ;
 int HDP_CLK_CNTL__IPH_MEM_CLK_SOFT_OVERRIDE_MASK ;
 int HDP_CLK_CNTL__RC_MEM_CLK_SOFT_OVERRIDE_MASK ;
 int HDP_CLK_CNTL__XDP_REG_CLK_SOFT_OVERRIDE_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmHDP_CLK_CNTL ;

__attribute__((used)) static void nv_update_hdp_clock_gating(struct amdgpu_device *adev,
           bool enable)
{
 uint32_t hdp_clk_cntl;

 if (!(adev->cg_flags & AMD_CG_SUPPORT_HDP_MGCG))
  return;

 hdp_clk_cntl = RREG32_SOC15(HDP, 0, mmHDP_CLK_CNTL);

 if (enable) {
  hdp_clk_cntl &=
   ~(uint32_t)
     (HDP_CLK_CNTL__IPH_MEM_CLK_SOFT_OVERRIDE_MASK |
      HDP_CLK_CNTL__RC_MEM_CLK_SOFT_OVERRIDE_MASK |
      HDP_CLK_CNTL__DBUS_CLK_SOFT_OVERRIDE_MASK |
      HDP_CLK_CNTL__DYN_CLK_SOFT_OVERRIDE_MASK |
      HDP_CLK_CNTL__XDP_REG_CLK_SOFT_OVERRIDE_MASK |
      HDP_CLK_CNTL__HDP_REG_CLK_SOFT_OVERRIDE_MASK);
 } else {
  hdp_clk_cntl |= HDP_CLK_CNTL__IPH_MEM_CLK_SOFT_OVERRIDE_MASK |
   HDP_CLK_CNTL__RC_MEM_CLK_SOFT_OVERRIDE_MASK |
   HDP_CLK_CNTL__DBUS_CLK_SOFT_OVERRIDE_MASK |
   HDP_CLK_CNTL__DYN_CLK_SOFT_OVERRIDE_MASK |
   HDP_CLK_CNTL__XDP_REG_CLK_SOFT_OVERRIDE_MASK |
   HDP_CLK_CNTL__HDP_REG_CLK_SOFT_OVERRIDE_MASK;
 }

 WREG32_SOC15(HDP, 0, mmHDP_CLK_CNTL, hdp_clk_cntl);
}
