
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int pdev; } ;


 int drm_vblank_init (struct drm_device*,int) ;
 int pci_set_master (int ) ;

int r128_driver_load(struct drm_device *dev, unsigned long flags)
{
 pci_set_master(dev->pdev);
 return drm_vblank_init(dev, 1);
}
