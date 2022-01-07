
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {void* switch_power_state; } ;
typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;


 void* DRM_SWITCH_POWER_CHANGING ;
 void* DRM_SWITCH_POWER_OFF ;
 void* DRM_SWITCH_POWER_ON ;
 int VGA_SWITCHEROO_OFF ;
 int VGA_SWITCHEROO_ON ;
 int drm_kms_helper_poll_disable (struct drm_device*) ;
 int drm_kms_helper_poll_enable (struct drm_device*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pr_info (char*) ;
 scalar_t__ radeon_is_px (struct drm_device*) ;
 int radeon_resume_kms (struct drm_device*,int,int) ;
 int radeon_suspend_kms (struct drm_device*,int,int,int) ;

__attribute__((used)) static void radeon_switcheroo_set_state(struct pci_dev *pdev, enum vga_switcheroo_state state)
{
 struct drm_device *dev = pci_get_drvdata(pdev);

 if (radeon_is_px(dev) && state == VGA_SWITCHEROO_OFF)
  return;

 if (state == VGA_SWITCHEROO_ON) {
  pr_info("radeon: switched on\n");

  dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;

  radeon_resume_kms(dev, 1, 1);

  dev->switch_power_state = DRM_SWITCH_POWER_ON;
  drm_kms_helper_poll_enable(dev);
 } else {
  pr_info("radeon: switched off\n");
  drm_kms_helper_poll_disable(dev);
  dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
  radeon_suspend_kms(dev, 1, 1, 0);
  dev->switch_power_state = DRM_SWITCH_POWER_OFF;
 }
}
