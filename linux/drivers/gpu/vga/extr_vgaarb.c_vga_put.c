
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_device {int dummy; } ;
struct pci_dev {int dummy; } ;


 int __vga_put (struct vga_device*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pci_dev* vga_default_device () ;
 int vga_lock ;
 struct vga_device* vgadev_find (struct pci_dev*) ;

void vga_put(struct pci_dev *pdev, unsigned int rsrc)
{
 struct vga_device *vgadev;
 unsigned long flags;


 if (pdev == ((void*)0))
  pdev = vga_default_device();
 if (pdev == ((void*)0))
  return;
 spin_lock_irqsave(&vga_lock, flags);
 vgadev = vgadev_find(pdev);
 if (vgadev == ((void*)0))
  goto bail;
 __vga_put(vgadev, rsrc);
bail:
 spin_unlock_irqrestore(&vga_lock, flags);
}
