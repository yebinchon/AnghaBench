
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct pp_hwmgr {int dummy; } ;
struct pp_atomfwctrl_bios_boot_up_values {void* ulFClk; void* ulDClk; void* ulVClk; void* ulEClk; void* ulDCEFClk; void* ulSocClk; int ucCoolingID; int usVddGfx; int usMvddc; int usVddci; int usVddc; int ulUClk; int ulGfxClk; int ulRevision; } ;
struct atom_firmware_info_v3_2 {int coolingsolution_id; int bootup_vddgfx_mv; int bootup_mvddc_mv; int bootup_vddci_mv; int bootup_vddc_mv; int bootup_mclk_in10khz; int bootup_sclk_in10khz; int firmware_revision; } ;


 int SMU11_SYSPLL0_DCEFCLK_ID ;
 int SMU11_SYSPLL0_DCLK_ID ;
 int SMU11_SYSPLL0_ECLK_ID ;
 int SMU11_SYSPLL0_ID ;
 int SMU11_SYSPLL0_SOCCLK_ID ;
 int SMU11_SYSPLL0_VCLK_ID ;
 int SMU11_SYSPLL1_0_FCLK_ID ;
 int SMU11_SYSPLL1_2_ID ;
 int pp_atomfwctrl_get_clk_information_by_clkid (struct pp_hwmgr*,int ,int ,void**) ;

__attribute__((used)) static void pp_atomfwctrl_copy_vbios_bootup_values_3_2(struct pp_hwmgr *hwmgr,
   struct pp_atomfwctrl_bios_boot_up_values *boot_values,
   struct atom_firmware_info_v3_2 *fw_info)
{
 uint32_t frequency = 0;

 boot_values->ulRevision = fw_info->firmware_revision;
 boot_values->ulGfxClk = fw_info->bootup_sclk_in10khz;
 boot_values->ulUClk = fw_info->bootup_mclk_in10khz;
 boot_values->usVddc = fw_info->bootup_vddc_mv;
 boot_values->usVddci = fw_info->bootup_vddci_mv;
 boot_values->usMvddc = fw_info->bootup_mvddc_mv;
 boot_values->usVddGfx = fw_info->bootup_vddgfx_mv;
 boot_values->ucCoolingID = fw_info->coolingsolution_id;
 boot_values->ulSocClk = 0;
 boot_values->ulDCEFClk = 0;

 if (!pp_atomfwctrl_get_clk_information_by_clkid(hwmgr, SMU11_SYSPLL0_SOCCLK_ID, SMU11_SYSPLL0_ID, &frequency))
  boot_values->ulSocClk = frequency;

 if (!pp_atomfwctrl_get_clk_information_by_clkid(hwmgr, SMU11_SYSPLL0_DCEFCLK_ID, SMU11_SYSPLL0_ID, &frequency))
  boot_values->ulDCEFClk = frequency;

 if (!pp_atomfwctrl_get_clk_information_by_clkid(hwmgr, SMU11_SYSPLL0_ECLK_ID, SMU11_SYSPLL0_ID, &frequency))
  boot_values->ulEClk = frequency;

 if (!pp_atomfwctrl_get_clk_information_by_clkid(hwmgr, SMU11_SYSPLL0_VCLK_ID, SMU11_SYSPLL0_ID, &frequency))
  boot_values->ulVClk = frequency;

 if (!pp_atomfwctrl_get_clk_information_by_clkid(hwmgr, SMU11_SYSPLL0_DCLK_ID, SMU11_SYSPLL0_ID, &frequency))
  boot_values->ulDClk = frequency;

 if (!pp_atomfwctrl_get_clk_information_by_clkid(hwmgr, SMU11_SYSPLL1_0_FCLK_ID, SMU11_SYSPLL1_2_ID, &frequency))
  boot_values->ulFClk = frequency;
}
