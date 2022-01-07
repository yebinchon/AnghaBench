
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int release_ring; int command_ring; } ;
struct pci_dev {int dummy; } ;
struct drm_device {struct qxl_device* dev_private; struct pci_dev* pdev; } ;


 int drm_mode_config_helper_suspend (struct drm_device*) ;
 int pci_save_state (struct pci_dev*) ;
 int qxl_check_idle (int ) ;
 int qxl_destroy_monitors_object (struct qxl_device*) ;
 int qxl_queue_garbage_collect (struct qxl_device*,int) ;
 int qxl_surf_evict (struct qxl_device*) ;
 int qxl_vram_evict (struct qxl_device*) ;

__attribute__((used)) static int qxl_drm_freeze(struct drm_device *dev)
{
 struct pci_dev *pdev = dev->pdev;
 struct qxl_device *qdev = dev->dev_private;
 int ret;

 ret = drm_mode_config_helper_suspend(dev);
 if (ret)
  return ret;

 qxl_destroy_monitors_object(qdev);
 qxl_surf_evict(qdev);
 qxl_vram_evict(qdev);

 while (!qxl_check_idle(qdev->command_ring));
 while (!qxl_check_idle(qdev->release_ring))
  qxl_queue_garbage_collect(qdev, 1);

 pci_save_state(pdev);

 return 0;
}
