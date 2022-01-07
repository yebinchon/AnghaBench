
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {int is_nb_dpm_enabled; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;



__attribute__((used)) static void smu8_clear_nb_dpm_flag(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *hw_data = hwmgr->backend;

 hw_data->is_nb_dpm_enabled = 0;
}
