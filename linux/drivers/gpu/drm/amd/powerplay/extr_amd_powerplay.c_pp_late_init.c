
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pp_hwmgr {int smu_lock; scalar_t__ pm_en; } ;
struct TYPE_4__ {scalar_t__ smu_prv_buffer_size; } ;
struct TYPE_3__ {struct pp_hwmgr* pp_handle; } ;
struct amdgpu_device {TYPE_2__ pm; TYPE_1__ powerplay; } ;


 int AMD_PP_TASK_COMPLETE_INIT ;
 int hwmgr_handle_task (struct pp_hwmgr*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pp_reserve_vram_for_smu (struct amdgpu_device*) ;

__attribute__((used)) static int pp_late_init(void *handle)
{
 struct amdgpu_device *adev = handle;
 struct pp_hwmgr *hwmgr = adev->powerplay.pp_handle;

 if (hwmgr && hwmgr->pm_en) {
  mutex_lock(&hwmgr->smu_lock);
  hwmgr_handle_task(hwmgr,
     AMD_PP_TASK_COMPLETE_INIT, ((void*)0));
  mutex_unlock(&hwmgr->smu_lock);
 }
 if (adev->pm.smu_prv_buffer_size != 0)
  pp_reserve_vram_for_smu(adev);

 return 0;
}
