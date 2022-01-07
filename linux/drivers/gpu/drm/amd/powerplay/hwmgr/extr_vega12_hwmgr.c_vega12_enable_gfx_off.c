
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega12_hwmgr {scalar_t__ gfxoff_controlled_by_driver; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PPSMC_MSG_AllowGfxOff ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int vega12_enable_gfx_off(struct pp_hwmgr *hwmgr)
{
 struct vega12_hwmgr *data =
   (struct vega12_hwmgr *)(hwmgr->backend);
 int ret = 0;

 if (data->gfxoff_controlled_by_driver)
  ret = smum_send_msg_to_smc(hwmgr, PPSMC_MSG_AllowGfxOff);

 return ret;
}
