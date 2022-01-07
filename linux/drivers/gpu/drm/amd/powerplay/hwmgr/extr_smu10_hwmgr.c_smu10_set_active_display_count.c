
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu10_hwmgr {scalar_t__ num_active_display; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PPSMC_MSG_SetDisplayCount ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,scalar_t__) ;

__attribute__((used)) static int smu10_set_active_display_count(struct pp_hwmgr *hwmgr, uint32_t count)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);

 if (smu10_data->num_active_display != count) {
  smu10_data->num_active_display = count;
  smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetDisplayCount,
    smu10_data->num_active_display);
 }

 return 0;
}
