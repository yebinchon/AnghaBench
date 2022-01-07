
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ dmar_map_gfx ;
 int pci_info (struct pci_dev*,char*) ;

__attribute__((used)) static void quirk_iommu_igfx(struct pci_dev *dev)
{
 pci_info(dev, "Disabling IOMMU for graphics on this chipset\n");
 dmar_map_gfx = 0;
}
