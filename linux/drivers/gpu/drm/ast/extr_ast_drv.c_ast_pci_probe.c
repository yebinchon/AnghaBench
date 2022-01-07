
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int ast_kick_out_firmware_fb (struct pci_dev*) ;
 int driver ;
 int drm_get_pci_dev (struct pci_dev*,struct pci_device_id const*,int *) ;

__attribute__((used)) static int ast_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 ast_kick_out_firmware_fb(pdev);

 return drm_get_pci_dev(pdev, ent, &driver);
}
