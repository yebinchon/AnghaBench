
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pp_hwmgr {int not_vf; int pm_en; int * display_config; int feature_mask; int chip_id; int chip_family; int smu_lock; int device; struct amdgpu_device* adev; } ;
struct TYPE_4__ {int * pp_funcs; struct pp_hwmgr* pp_handle; } ;
struct TYPE_3__ {int pm_display_cfg; int pp_feature; } ;
struct amdgpu_device {TYPE_2__ powerplay; TYPE_1__ pm; int asic_type; int family; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_cgs_create_device (struct amdgpu_device*) ;
 scalar_t__ amdgpu_dpm ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 struct pp_hwmgr* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pp_dpm_funcs ;

__attribute__((used)) static int amd_powerplay_create(struct amdgpu_device *adev)
{
 struct pp_hwmgr *hwmgr;

 if (adev == ((void*)0))
  return -EINVAL;

 hwmgr = kzalloc(sizeof(struct pp_hwmgr), GFP_KERNEL);
 if (hwmgr == ((void*)0))
  return -ENOMEM;

 hwmgr->adev = adev;
 hwmgr->not_vf = !amdgpu_sriov_vf(adev);
 hwmgr->pm_en = (amdgpu_dpm && hwmgr->not_vf) ? 1 : 0;
 hwmgr->device = amdgpu_cgs_create_device(adev);
 mutex_init(&hwmgr->smu_lock);
 hwmgr->chip_family = adev->family;
 hwmgr->chip_id = adev->asic_type;
 hwmgr->feature_mask = adev->pm.pp_feature;
 hwmgr->display_config = &adev->pm.pm_display_cfg;
 adev->powerplay.pp_handle = hwmgr;
 adev->powerplay.pp_funcs = &pp_dpm_funcs;
 return 0;
}
