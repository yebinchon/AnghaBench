
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int pdev; TYPE_2__* agp; } ;
struct TYPE_3__ {int aper_size; int aper_base; } ;
struct TYPE_4__ {TYPE_1__ agp_info; int agp_mtrr; } ;


 int EINVAL ;
 int arch_phys_wc_add (int ,int) ;
 TYPE_2__* drm_agp_init (struct drm_device*) ;
 int pci_set_master (int ) ;

int i810_driver_load(struct drm_device *dev, unsigned long flags)
{
 dev->agp = drm_agp_init(dev);
 if (dev->agp) {
  dev->agp->agp_mtrr = arch_phys_wc_add(
   dev->agp->agp_info.aper_base,
   dev->agp->agp_info.aper_size *
   1024 * 1024);
 }


 if (!dev->agp)
  return -EINVAL;

 pci_set_master(dev->pdev);

 return 0;
}
