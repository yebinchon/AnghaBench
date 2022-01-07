
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_display_manager {int dc; int cached_state; } ;
struct amdgpu_device {int ddev; struct amdgpu_display_manager dm; } ;


 int DC_ACPI_CM_POWER_STATE_D3 ;
 int WARN_ON (int ) ;
 int amdgpu_dm_irq_suspend (struct amdgpu_device*) ;
 int dc_set_power_state (int ,int ) ;
 int drm_atomic_helper_suspend (int ) ;
 int s3_handle_mst (int ,int) ;

__attribute__((used)) static int dm_suspend(void *handle)
{
 struct amdgpu_device *adev = handle;
 struct amdgpu_display_manager *dm = &adev->dm;
 int ret = 0;

 WARN_ON(adev->dm.cached_state);
 adev->dm.cached_state = drm_atomic_helper_suspend(adev->ddev);

 s3_handle_mst(adev->ddev, 1);

 amdgpu_dm_irq_suspend(adev);


 dc_set_power_state(dm->dc, DC_ACPI_CM_POWER_STATE_D3);

 return ret;
}
