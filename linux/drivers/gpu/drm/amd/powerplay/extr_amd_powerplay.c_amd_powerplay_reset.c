
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int AMD_PP_TASK_COMPLETE_INIT ;
 int hwmgr_handle_task (struct pp_hwmgr*,int ,int *) ;
 int hwmgr_hw_fini (struct pp_hwmgr*) ;
 int hwmgr_hw_init (struct pp_hwmgr*) ;

__attribute__((used)) static int amd_powerplay_reset(void *handle)
{
 struct pp_hwmgr *hwmgr = handle;
 int ret;

 ret = hwmgr_hw_fini(hwmgr);
 if (ret)
  return ret;

 ret = hwmgr_hw_init(hwmgr);
 if (ret)
  return ret;

 return hwmgr_handle_task(hwmgr, AMD_PP_TASK_COMPLETE_INIT, ((void*)0));
}
