
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
typedef enum dm_pp_clock_type { ____Placeholder_dm_pp_clock_type } dm_pp_clock_type ;







 int DRM_ERROR (char*,int) ;
 int SMU_CLK_COUNT ;
 int SMU_DCEFCLK ;
 int SMU_DISPCLK ;
 int SMU_GFXCLK ;
 int SMU_MCLK ;
 int SMU_SOCCLK ;

__attribute__((used)) static enum smu_clk_type dc_to_smu_clock_type(
  enum dm_pp_clock_type dm_pp_clk_type)
{
 enum smu_clk_type smu_clk_type = SMU_CLK_COUNT;

 switch (dm_pp_clk_type) {
 case 131:
  smu_clk_type = SMU_DISPCLK;
  break;
 case 130:
  smu_clk_type = SMU_GFXCLK;
  break;
 case 129:
  smu_clk_type = SMU_MCLK;
  break;
 case 132:
  smu_clk_type = SMU_DCEFCLK;
  break;
 case 128:
  smu_clk_type = SMU_SOCCLK;
  break;
 default:
  DRM_ERROR("DM_PPLIB: invalid clock type: %d!\n",
     dm_pp_clk_type);
  break;
 }

 return smu_clk_type;
}
