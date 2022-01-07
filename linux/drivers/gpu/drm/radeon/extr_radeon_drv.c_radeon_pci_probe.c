
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {unsigned long driver_data; } ;
struct pci_dev {int dev; } ;
 int ENODEV ;
 int EPROBE_DEFER ;
 unsigned long RADEON_FAMILY_MASK ;
 int dev_info (int *,char*) ;
 int drm_fb_helper_remove_conflicting_pci_framebuffers (struct pci_dev*,int ,char*) ;
 int drm_get_pci_dev (struct pci_dev*,struct pci_device_id const*,int *) ;
 int kms_driver ;
 int radeon_cik_support ;
 int radeon_si_support ;
 scalar_t__ vga_switcheroo_client_probe_defer (struct pci_dev*) ;

__attribute__((used)) static int radeon_pci_probe(struct pci_dev *pdev,
       const struct pci_device_id *ent)
{
 unsigned long flags = 0;
 int ret;

 if (!ent)
  return -ENODEV;

 flags = ent->driver_data;

 if (!radeon_si_support) {
  switch (flags & RADEON_FAMILY_MASK) {
  case 129:
  case 130:
  case 128:
  case 131:
  case 136:
   dev_info(&pdev->dev,
     "SI support disabled by module param\n");
   return -ENODEV;
  }
 }
 if (!radeon_cik_support) {
  switch (flags & RADEON_FAMILY_MASK) {
  case 133:
  case 137:
  case 135:
  case 134:
  case 132:
   dev_info(&pdev->dev,
     "CIK support disabled by module param\n");
   return -ENODEV;
  }
 }

 if (vga_switcheroo_client_probe_defer(pdev))
  return -EPROBE_DEFER;


 ret = drm_fb_helper_remove_conflicting_pci_framebuffers(pdev, 0, "radeondrmfb");
 if (ret)
  return ret;

 return drm_get_pci_dev(pdev, ent, &kms_driver);
}
