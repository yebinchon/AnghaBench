
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_HDP_DS ;
 int AMD_CG_SUPPORT_HDP_LS ;
 int AMD_CG_SUPPORT_HDP_SD ;
 int HDP ;
 int HDP_CLK_CNTL ;
 int HDP_MEM_POWER_CTRL ;
 int IPH_MEM_CLK_SOFT_OVERRIDE ;
 int IPH_MEM_POWER_CTRL_EN ;
 int IPH_MEM_POWER_DS_EN ;
 int IPH_MEM_POWER_LS_EN ;
 int IPH_MEM_POWER_SD_EN ;
 int RC_MEM_CLK_SOFT_OVERRIDE ;
 int RC_MEM_POWER_CTRL_EN ;
 int RC_MEM_POWER_DS_EN ;
 int RC_MEM_POWER_LS_EN ;
 int RC_MEM_POWER_SD_EN ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmHDP_CLK_CNTL ;
 int mmHDP_MEM_POWER_CTRL ;

__attribute__((used)) static void nv_update_hdp_mem_power_gating(struct amdgpu_device *adev,
        bool enable)
{
 uint32_t hdp_clk_cntl, hdp_clk_cntl1;
 uint32_t hdp_mem_pwr_cntl;

 if (!(adev->cg_flags & (AMD_CG_SUPPORT_HDP_LS |
    AMD_CG_SUPPORT_HDP_DS |
    AMD_CG_SUPPORT_HDP_SD)))
  return;

 hdp_clk_cntl = hdp_clk_cntl1 = RREG32_SOC15(HDP, 0, mmHDP_CLK_CNTL);
 hdp_mem_pwr_cntl = RREG32_SOC15(HDP, 0, mmHDP_MEM_POWER_CTRL);



 hdp_clk_cntl = REG_SET_FIELD(hdp_clk_cntl, HDP_CLK_CNTL,
         IPH_MEM_CLK_SOFT_OVERRIDE, 1);
 hdp_clk_cntl = REG_SET_FIELD(hdp_clk_cntl, HDP_CLK_CNTL,
         RC_MEM_CLK_SOFT_OVERRIDE, 1);
 WREG32_SOC15(HDP, 0, mmHDP_CLK_CNTL, hdp_clk_cntl);



 hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl, HDP_MEM_POWER_CTRL,
      IPH_MEM_POWER_CTRL_EN, 0);
 hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl, HDP_MEM_POWER_CTRL,
      IPH_MEM_POWER_LS_EN, 0);
 hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl, HDP_MEM_POWER_CTRL,
      IPH_MEM_POWER_DS_EN, 0);
 hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl, HDP_MEM_POWER_CTRL,
      IPH_MEM_POWER_SD_EN, 0);
 hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl, HDP_MEM_POWER_CTRL,
      RC_MEM_POWER_CTRL_EN, 0);
 hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl, HDP_MEM_POWER_CTRL,
      RC_MEM_POWER_LS_EN, 0);
 hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl, HDP_MEM_POWER_CTRL,
      RC_MEM_POWER_DS_EN, 0);
 hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl, HDP_MEM_POWER_CTRL,
      RC_MEM_POWER_SD_EN, 0);
 WREG32_SOC15(HDP, 0, mmHDP_MEM_POWER_CTRL, hdp_mem_pwr_cntl);


 if (adev->cg_flags & AMD_CG_SUPPORT_HDP_LS) {
  hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl,
       HDP_MEM_POWER_CTRL,
       IPH_MEM_POWER_LS_EN, enable);
  hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl,
       HDP_MEM_POWER_CTRL,
       RC_MEM_POWER_LS_EN, enable);
 } else if (adev->cg_flags & AMD_CG_SUPPORT_HDP_DS) {
  hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl,
       HDP_MEM_POWER_CTRL,
       IPH_MEM_POWER_DS_EN, enable);
  hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl,
       HDP_MEM_POWER_CTRL,
       RC_MEM_POWER_DS_EN, enable);
 } else if (adev->cg_flags & AMD_CG_SUPPORT_HDP_SD) {
  hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl,
       HDP_MEM_POWER_CTRL,
       IPH_MEM_POWER_SD_EN, enable);

  hdp_mem_pwr_cntl = REG_SET_FIELD(hdp_mem_pwr_cntl,
       HDP_MEM_POWER_CTRL,
       RC_MEM_POWER_DS_EN, enable);
 }

 WREG32_SOC15(HDP, 0, mmHDP_MEM_POWER_CTRL, hdp_mem_pwr_cntl);


 WREG32_SOC15(HDP, 0, mmHDP_CLK_CNTL, hdp_clk_cntl1);
}
