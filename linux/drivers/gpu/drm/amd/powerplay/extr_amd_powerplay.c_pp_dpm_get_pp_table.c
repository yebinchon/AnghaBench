
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int soft_pp_table_size; int smu_lock; scalar_t__ soft_pp_table; int pm_en; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int pp_dpm_get_pp_table(void *handle, char **table)
{
 struct pp_hwmgr *hwmgr = handle;
 int size = 0;

 if (!hwmgr || !hwmgr->pm_en ||!hwmgr->soft_pp_table)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);
 *table = (char *)hwmgr->soft_pp_table;
 size = hwmgr->soft_pp_table_size;
 mutex_unlock(&hwmgr->smu_lock);
 return size;
}
