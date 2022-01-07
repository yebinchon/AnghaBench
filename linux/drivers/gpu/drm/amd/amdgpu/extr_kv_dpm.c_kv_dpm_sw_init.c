
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int work; int irq; } ;
struct TYPE_7__ {int boot_ps; int requested_ps; int current_ps; TYPE_2__ thermal; int forced_level; void* user_state; void* state; } ;
struct TYPE_8__ {int mutex; TYPE_3__ dpm; int int_thermal_type; int current_mclk; int current_sclk; int default_mclk; int default_sclk; } ;
struct TYPE_5__ {int default_mclk; int default_sclk; } ;
struct amdgpu_device {TYPE_4__ pm; TYPE_1__ clock; } ;


 int AMDGPU_IRQ_CLIENTID_LEGACY ;
 int AMD_DPM_FORCED_LEVEL_AUTO ;
 int DRM_ERROR (char*) ;
 int DRM_INFO (char*) ;
 int INIT_WORK (int *,int ) ;
 void* POWER_STATE_TYPE_BALANCED ;
 int THERMAL_TYPE_NONE ;
 int amdgpu_dpm ;
 int amdgpu_dpm_thermal_work_handler ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int,int *) ;
 int amdgpu_pm_print_power_states (struct amdgpu_device*) ;
 int kv_dpm_fini (struct amdgpu_device*) ;
 int kv_dpm_init (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kv_dpm_sw_init(void *handle)
{
 int ret;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 ret = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 230,
    &adev->pm.dpm.thermal.irq);
 if (ret)
  return ret;

 ret = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 231,
    &adev->pm.dpm.thermal.irq);
 if (ret)
  return ret;


 adev->pm.dpm.state = POWER_STATE_TYPE_BALANCED;
 adev->pm.dpm.user_state = POWER_STATE_TYPE_BALANCED;
 adev->pm.dpm.forced_level = AMD_DPM_FORCED_LEVEL_AUTO;
 adev->pm.default_sclk = adev->clock.default_sclk;
 adev->pm.default_mclk = adev->clock.default_mclk;
 adev->pm.current_sclk = adev->clock.default_sclk;
 adev->pm.current_mclk = adev->clock.default_mclk;
 adev->pm.int_thermal_type = THERMAL_TYPE_NONE;

 if (amdgpu_dpm == 0)
  return 0;

 INIT_WORK(&adev->pm.dpm.thermal.work, amdgpu_dpm_thermal_work_handler);
 mutex_lock(&adev->pm.mutex);
 ret = kv_dpm_init(adev);
 if (ret)
  goto dpm_failed;
 adev->pm.dpm.current_ps = adev->pm.dpm.requested_ps = adev->pm.dpm.boot_ps;
 if (amdgpu_dpm == 1)
  amdgpu_pm_print_power_states(adev);
 mutex_unlock(&adev->pm.mutex);
 DRM_INFO("amdgpu: dpm initialized\n");

 return 0;

dpm_failed:
 kv_dpm_fini(adev);
 mutex_unlock(&adev->pm.mutex);
 DRM_ERROR("amdgpu: dpm initialization failed\n");
 return ret;
}
