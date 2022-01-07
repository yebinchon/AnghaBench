
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vega20_hwmgr {TYPE_1__* smu_features; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;


 size_t GNLD_PPT ;
 int PPSMC_MSG_SetPptLimit ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

int vega20_set_power_limit(struct pp_hwmgr *hwmgr, uint32_t n)
{
 struct vega20_hwmgr *data =
   (struct vega20_hwmgr *)(hwmgr->backend);

 if (data->smu_features[GNLD_PPT].enabled)
  return smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetPptLimit, n);

 return 0;
}
