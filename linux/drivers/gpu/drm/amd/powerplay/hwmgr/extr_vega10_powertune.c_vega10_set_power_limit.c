
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ enable_pkg_pwr_tracking_feature; } ;
struct vega10_hwmgr {TYPE_1__ registry_data; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;


 int PPSMC_MSG_SetPptLimit ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

int vega10_set_power_limit(struct pp_hwmgr *hwmgr, uint32_t n)
{
 struct vega10_hwmgr *data = hwmgr->backend;

 if (data->registry_data.enable_pkg_pwr_tracking_feature)
  smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetPptLimit, n);

 return 0;
}
