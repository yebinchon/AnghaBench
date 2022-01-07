
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dm_pp_clock_type { ____Placeholder_dm_pp_clock_type } dm_pp_clock_type ;
typedef enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;
 int DRM_ERROR (char*,int) ;
 int amd_pp_dcef_clock ;
 int amd_pp_dcf_clock ;
 int amd_pp_disp_clock ;
 int amd_pp_dpp_clock ;
 int amd_pp_f_clock ;
 int amd_pp_mem_clock ;
 int amd_pp_phy_clock ;
 int amd_pp_pixel_clock ;
 int amd_pp_sys_clock ;

__attribute__((used)) static enum amd_pp_clock_type dc_to_pp_clock_type(
  enum dm_pp_clock_type dm_pp_clk_type)
{
 enum amd_pp_clock_type amd_pp_clk_type = 0;

 switch (dm_pp_clk_type) {
 case 133:
  amd_pp_clk_type = amd_pp_disp_clock;
  break;
 case 131:
  amd_pp_clk_type = amd_pp_sys_clock;
  break;
 case 129:
  amd_pp_clk_type = amd_pp_mem_clock;
  break;
 case 136:
  amd_pp_clk_type = amd_pp_dcef_clock;
  break;
 case 135:
  amd_pp_clk_type = amd_pp_dcf_clock;
  break;
 case 128:
  amd_pp_clk_type = amd_pp_pixel_clock;
  break;
 case 130:
  amd_pp_clk_type = amd_pp_f_clock;
  break;
 case 134:
  amd_pp_clk_type = amd_pp_phy_clock;
  break;
 case 132:
  amd_pp_clk_type = amd_pp_dpp_clock;
  break;
 default:
  DRM_ERROR("DM_PPLIB: invalid clock type: %d!\n",
    dm_pp_clk_type);
  break;
 }

 return amd_pp_clk_type;
}
