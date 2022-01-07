
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct drm_device {struct qxl_device* dev_private; } ;


 int VGA_RSRC_LEGACY_IO ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 scalar_t__ is_vga (struct pci_dev*) ;
 int kfree (struct qxl_device*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int qxl_device_fini (struct qxl_device*) ;
 int qxl_modeset_fini (struct qxl_device*) ;
 int vga_put (struct pci_dev*,int ) ;

__attribute__((used)) static void
qxl_pci_remove(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 struct qxl_device *qdev = dev->dev_private;

 drm_dev_unregister(dev);

 qxl_modeset_fini(qdev);
 qxl_device_fini(qdev);
 if (is_vga(pdev))
  vga_put(pdev, VGA_RSRC_LEGACY_IO);

 dev->dev_private = ((void*)0);
 kfree(qdev);
 drm_dev_put(dev);
}
