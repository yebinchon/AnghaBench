
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct drm_device {void* switch_power_state; } ;
typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;


 void* DRM_SWITCH_POWER_CHANGING ;
 void* DRM_SWITCH_POWER_OFF ;
 void* DRM_SWITCH_POWER_ON ;
 int VGA_SWITCHEROO_OFF ;
 int VGA_SWITCHEROO_ON ;
 scalar_t__ nouveau_is_optimus () ;
 scalar_t__ nouveau_is_v1_dsm () ;
 int nouveau_pmops_resume (int *) ;
 int nouveau_pmops_suspend (int *) ;
 int nouveau_switcheroo_optimus_dsm () ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pr_err (char*) ;

__attribute__((used)) static void
nouveau_switcheroo_set_state(struct pci_dev *pdev,
        enum vga_switcheroo_state state)
{
 struct drm_device *dev = pci_get_drvdata(pdev);

 if ((nouveau_is_optimus() || nouveau_is_v1_dsm()) && state == VGA_SWITCHEROO_OFF)
  return;

 if (state == VGA_SWITCHEROO_ON) {
  pr_err("VGA switcheroo: switched nouveau on\n");
  dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
  nouveau_pmops_resume(&pdev->dev);
  dev->switch_power_state = DRM_SWITCH_POWER_ON;
 } else {
  pr_err("VGA switcheroo: switched nouveau off\n");
  dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
  nouveau_switcheroo_optimus_dsm();
  nouveau_pmops_suspend(&pdev->dev);
  dev->switch_power_state = DRM_SWITCH_POWER_OFF;
 }
}
