
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbox_private {int ddev; } ;
struct pci_dev {int dummy; } ;


 int drm_dev_put (int *) ;
 int drm_dev_unregister (int *) ;
 struct vbox_private* pci_get_drvdata (struct pci_dev*) ;
 int vbox_fbdev_fini (struct vbox_private*) ;
 int vbox_hw_fini (struct vbox_private*) ;
 int vbox_irq_fini (struct vbox_private*) ;
 int vbox_mm_fini (struct vbox_private*) ;
 int vbox_mode_fini (struct vbox_private*) ;

__attribute__((used)) static void vbox_pci_remove(struct pci_dev *pdev)
{
 struct vbox_private *vbox = pci_get_drvdata(pdev);

 drm_dev_unregister(&vbox->ddev);
 vbox_fbdev_fini(vbox);
 vbox_irq_fini(vbox);
 vbox_mode_fini(vbox);
 vbox_mm_fini(vbox);
 vbox_hw_fini(vbox);
 drm_dev_put(&vbox->ddev);
}
