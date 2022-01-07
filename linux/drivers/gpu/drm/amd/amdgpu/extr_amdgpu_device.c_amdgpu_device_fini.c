
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * gpu_info_fw; } ;
struct TYPE_3__ {scalar_t__ mode_config_initialized; } ;
struct amdgpu_device {int shutdown; int accel_working; int flags; scalar_t__ asic_type; int dev; int * rmmio; int * rio_mem; int pdev; int * bios; int delayed_init_work; TYPE_2__ firmware; int ddev; TYPE_1__ mode_info; } ;


 int AMD_IS_PX ;
 scalar_t__ CHIP_NAVI10 ;
 int CONFIG_PERF_EVENTS ;
 int DRM_INFO (char*) ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ amdgim_is_hwperf (struct amdgpu_device*) ;
 int amdgpu_atombios_fini (struct amdgpu_device*) ;
 int amdgpu_debugfs_preempt_cleanup (struct amdgpu_device*) ;
 int amdgpu_debugfs_regs_cleanup (struct amdgpu_device*) ;
 int amdgpu_device_doorbell_fini (struct amdgpu_device*) ;
 int amdgpu_device_has_dc_support (struct amdgpu_device*) ;
 int amdgpu_device_ip_fini (struct amdgpu_device*) ;
 scalar_t__ amdgpu_discovery ;
 int amdgpu_discovery_fini (struct amdgpu_device*) ;
 int amdgpu_emu_mode ;
 int amdgpu_fbdev_fini (struct amdgpu_device*) ;
 int amdgpu_fence_driver_fini (struct amdgpu_device*) ;
 int amdgpu_i2c_fini (struct amdgpu_device*) ;
 int amdgpu_irq_disable_all (struct amdgpu_device*) ;
 int amdgpu_pm_sysfs_fini (struct amdgpu_device*) ;
 int amdgpu_pm_virt_sysfs_fini (struct amdgpu_device*) ;
 int amdgpu_pmu_fini (struct amdgpu_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int amdgpu_ucode_sysfs_fini (struct amdgpu_device*) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_attr_pcie_replay_count ;
 int device_remove_file (int ,int *) ;
 int drm_atomic_helper_shutdown (int ) ;
 int drm_helper_force_disable_all (int ) ;
 int iounmap (int *) ;
 int kfree (int *) ;
 int pci_iounmap (int ,int *) ;
 int pci_is_thunderbolt_attached (int ) ;
 int release_firmware (int *) ;
 int vga_client_register (int ,int *,int *,int *) ;
 int vga_switcheroo_fini_domain_pm_ops (int ) ;
 int vga_switcheroo_unregister_client (int ) ;

void amdgpu_device_fini(struct amdgpu_device *adev)
{
 int r;

 DRM_INFO("amdgpu: finishing device.\n");
 adev->shutdown = 1;

 amdgpu_irq_disable_all(adev);
 if (adev->mode_info.mode_config_initialized){
  if (!amdgpu_device_has_dc_support(adev))
   drm_helper_force_disable_all(adev->ddev);
  else
   drm_atomic_helper_shutdown(adev->ddev);
 }
 amdgpu_fence_driver_fini(adev);
 amdgpu_pm_sysfs_fini(adev);
 amdgpu_fbdev_fini(adev);
 r = amdgpu_device_ip_fini(adev);
 if (adev->firmware.gpu_info_fw) {
  release_firmware(adev->firmware.gpu_info_fw);
  adev->firmware.gpu_info_fw = ((void*)0);
 }
 adev->accel_working = 0;
 cancel_delayed_work_sync(&adev->delayed_init_work);

 if (!amdgpu_device_has_dc_support(adev))
  amdgpu_i2c_fini(adev);

 if (amdgpu_emu_mode != 1)
  amdgpu_atombios_fini(adev);

 kfree(adev->bios);
 adev->bios = ((void*)0);
 if (!pci_is_thunderbolt_attached(adev->pdev))
  vga_switcheroo_unregister_client(adev->pdev);
 if (adev->flags & AMD_IS_PX)
  vga_switcheroo_fini_domain_pm_ops(adev->dev);
 vga_client_register(adev->pdev, ((void*)0), ((void*)0), ((void*)0));
 if (adev->rio_mem)
  pci_iounmap(adev->pdev, adev->rio_mem);
 adev->rio_mem = ((void*)0);
 iounmap(adev->rmmio);
 adev->rmmio = ((void*)0);
 amdgpu_device_doorbell_fini(adev);
 if (amdgpu_sriov_vf(adev) && amdgim_is_hwperf(adev))
  amdgpu_pm_virt_sysfs_fini(adev);

 amdgpu_debugfs_regs_cleanup(adev);
 device_remove_file(adev->dev, &dev_attr_pcie_replay_count);
 amdgpu_ucode_sysfs_fini(adev);
 if (IS_ENABLED(CONFIG_PERF_EVENTS))
  amdgpu_pmu_fini(adev);
 amdgpu_debugfs_preempt_cleanup(adev);
 if (amdgpu_discovery && adev->asic_type >= CHIP_NAVI10)
  amdgpu_discovery_fini(adev);
}
