
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int driver ;
 int drm_fb_helper_remove_conflicting_pci_framebuffers (struct pci_dev*,int ,char*) ;
 int drm_get_pci_dev (struct pci_dev*,struct pci_device_id const*,int *) ;

__attribute__((used)) static int mga_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 drm_fb_helper_remove_conflicting_pci_framebuffers(pdev, 0, "mgag200drmfb");

 return drm_get_pci_dev(pdev, ent, &driver);
}
