
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int msi_enabled; int installed; int ih2_work; int ih1_work; int lock; } ;
struct TYPE_6__ {int num_crtc; } ;
struct amdgpu_device {TYPE_4__* ddev; int hotplug_work; TYPE_3__ irq; TYPE_1__ mode_info; int enable_virtual_display; int dev; int pdev; } ;
struct TYPE_9__ {int vblank_disable_immediate; int max_vblank_count; TYPE_2__* pdev; } ;
struct TYPE_7__ {int irq; } ;


 int DRM_DEBUG (char*) ;
 int INIT_WORK (int *,int ) ;
 int amdgpu_device_has_dc_support (struct amdgpu_device*) ;
 int amdgpu_hotplug_work_func ;
 int amdgpu_irq_handle_ih1 ;
 int amdgpu_irq_handle_ih2 ;
 scalar_t__ amdgpu_msi_ok (struct amdgpu_device*) ;
 int dev_dbg (int ,char*) ;
 int drm_irq_install (TYPE_4__*,int ) ;
 int drm_vblank_init (TYPE_4__*,int ) ;
 int flush_work (int *) ;
 int pci_enable_msi (int ) ;
 int spin_lock_init (int *) ;

int amdgpu_irq_init(struct amdgpu_device *adev)
{
 int r = 0;

 spin_lock_init(&adev->irq.lock);


 adev->irq.msi_enabled = 0;

 if (amdgpu_msi_ok(adev)) {
  int ret = pci_enable_msi(adev->pdev);
  if (!ret) {
   adev->irq.msi_enabled = 1;
   dev_dbg(adev->dev, "amdgpu: using MSI.\n");
  }
 }

 if (!amdgpu_device_has_dc_support(adev)) {
  if (!adev->enable_virtual_display)


   adev->ddev->vblank_disable_immediate = 1;

  r = drm_vblank_init(adev->ddev, adev->mode_info.num_crtc);
  if (r)
   return r;


  INIT_WORK(&adev->hotplug_work,
    amdgpu_hotplug_work_func);
 }

 INIT_WORK(&adev->irq.ih1_work, amdgpu_irq_handle_ih1);
 INIT_WORK(&adev->irq.ih2_work, amdgpu_irq_handle_ih2);

 adev->irq.installed = 1;
 r = drm_irq_install(adev->ddev, adev->ddev->pdev->irq);
 if (r) {
  adev->irq.installed = 0;
  if (!amdgpu_device_has_dc_support(adev))
   flush_work(&adev->hotplug_work);
  return r;
 }
 adev->ddev->max_vblank_count = 0x00ffffff;

 DRM_DEBUG("amdgpu: irq initialized.\n");
 return 0;
}
