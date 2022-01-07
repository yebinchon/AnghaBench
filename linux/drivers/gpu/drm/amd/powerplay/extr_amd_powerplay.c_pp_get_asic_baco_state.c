
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {int smu_lock; TYPE_1__* hwmgr_func; int pm_en; } ;
typedef enum BACO_STATE { ____Placeholder_BACO_STATE } BACO_STATE ;
struct TYPE_2__ {int (* get_asic_baco_state ) (struct pp_hwmgr*,int*) ;} ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct pp_hwmgr*,int*) ;

__attribute__((used)) static int pp_get_asic_baco_state(void *handle, int *state)
{
 struct pp_hwmgr *hwmgr = handle;

 if (!hwmgr)
  return -EINVAL;

 if (!hwmgr->pm_en || !hwmgr->hwmgr_func->get_asic_baco_state)
  return 0;

 mutex_lock(&hwmgr->smu_lock);
 hwmgr->hwmgr_func->get_asic_baco_state(hwmgr, (enum BACO_STATE *)state);
 mutex_unlock(&hwmgr->smu_lock);

 return 0;
}
