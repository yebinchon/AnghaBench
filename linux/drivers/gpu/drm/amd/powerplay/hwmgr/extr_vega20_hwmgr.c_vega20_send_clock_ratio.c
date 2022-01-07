
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fclk_gfxclk_ratio; } ;
struct vega20_hwmgr {TYPE_1__ registry_data; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PPSMC_MSG_SetFclkGfxClkRatio ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int vega20_send_clock_ratio(struct pp_hwmgr *hwmgr)
{
 struct vega20_hwmgr *data =
   (struct vega20_hwmgr *)(hwmgr->backend);

 return smum_send_msg_to_smc_with_parameter(hwmgr,
   PPSMC_MSG_SetFclkGfxClkRatio,
   data->registry_data.fclk_gfxclk_ratio);
}
