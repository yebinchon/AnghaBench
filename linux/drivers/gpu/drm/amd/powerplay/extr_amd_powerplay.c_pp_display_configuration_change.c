
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int smu_lock; int pm_en; } ;
struct amd_pp_display_configuration {int dummy; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phm_store_dal_configuration_data (struct pp_hwmgr*,struct amd_pp_display_configuration const*) ;

__attribute__((used)) static int pp_display_configuration_change(void *handle,
 const struct amd_pp_display_configuration *display_config)
{
 struct pp_hwmgr *hwmgr = handle;

 if (!hwmgr || !hwmgr->pm_en)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);
 phm_store_dal_configuration_data(hwmgr, display_config);
 mutex_unlock(&hwmgr->smu_lock);
 return 0;
}
