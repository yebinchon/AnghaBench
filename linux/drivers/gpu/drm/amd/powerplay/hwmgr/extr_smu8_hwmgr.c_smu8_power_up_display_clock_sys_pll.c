
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {int disp_clk_bypass_pending; int disp_clk_bypass; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;



__attribute__((used)) static void smu8_power_up_display_clock_sys_pll(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *hw_data = hwmgr->backend;

 hw_data->disp_clk_bypass_pending = 0;
 hw_data->disp_clk_bypass = 0;
}
