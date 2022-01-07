
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int installed; int lock; } ;
struct radeon_device {int msi_enabled; int hotplug_work; TYPE_2__ irq; TYPE_3__* ddev; int audio_work; int dp_work; int dev; int pdev; int num_crtc; } ;
struct TYPE_7__ {int vblank_disable_immediate; TYPE_1__* pdev; } ;
struct TYPE_5__ {int irq; } ;


 int DRM_INFO (char*) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int dev_info (int ,char*) ;
 int drm_irq_install (TYPE_3__*,int ) ;
 int drm_vblank_init (TYPE_3__*,int ) ;
 int flush_delayed_work (int *) ;
 int pci_enable_msi (int ) ;
 int r600_audio_update_hdmi ;
 int radeon_dp_work_func ;
 int radeon_hotplug_work_func ;
 scalar_t__ radeon_msi_ok (struct radeon_device*) ;
 int spin_lock_init (int *) ;

int radeon_irq_kms_init(struct radeon_device *rdev)
{
 int r = 0;

 spin_lock_init(&rdev->irq.lock);


 rdev->ddev->vblank_disable_immediate = 1;

 r = drm_vblank_init(rdev->ddev, rdev->num_crtc);
 if (r) {
  return r;
 }


 rdev->msi_enabled = 0;

 if (radeon_msi_ok(rdev)) {
  int ret = pci_enable_msi(rdev->pdev);
  if (!ret) {
   rdev->msi_enabled = 1;
   dev_info(rdev->dev, "radeon: using MSI.\n");
  }
 }

 INIT_DELAYED_WORK(&rdev->hotplug_work, radeon_hotplug_work_func);
 INIT_WORK(&rdev->dp_work, radeon_dp_work_func);
 INIT_WORK(&rdev->audio_work, r600_audio_update_hdmi);

 rdev->irq.installed = 1;
 r = drm_irq_install(rdev->ddev, rdev->ddev->pdev->irq);
 if (r) {
  rdev->irq.installed = 0;
  flush_delayed_work(&rdev->hotplug_work);
  return r;
 }

 DRM_INFO("radeon: irq initialized.\n");
 return 0;
}
