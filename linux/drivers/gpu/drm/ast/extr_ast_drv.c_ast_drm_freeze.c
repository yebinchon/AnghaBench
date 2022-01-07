
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int fb_helper; int pdev; } ;


 int drm_fb_helper_set_suspend_unlocked (int ,int) ;
 int drm_kms_helper_poll_disable (struct drm_device*) ;
 int pci_save_state (int ) ;

__attribute__((used)) static int ast_drm_freeze(struct drm_device *dev)
{
 drm_kms_helper_poll_disable(dev);
 pci_save_state(dev->pdev);
 drm_fb_helper_set_suspend_unlocked(dev->fb_helper, 1);

 return 0;
}
