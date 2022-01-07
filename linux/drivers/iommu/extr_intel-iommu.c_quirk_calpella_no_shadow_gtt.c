
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int GGC ;
 unsigned short GGC_MEMORY_VT_ENABLED ;
 scalar_t__ dmar_map_gfx ;
 int intel_iommu_strict ;
 int pci_info (struct pci_dev*,char*) ;
 scalar_t__ pci_read_config_word (struct pci_dev*,int ,unsigned short*) ;

__attribute__((used)) static void quirk_calpella_no_shadow_gtt(struct pci_dev *dev)
{
 unsigned short ggc;

 if (pci_read_config_word(dev, GGC, &ggc))
  return;

 if (!(ggc & GGC_MEMORY_VT_ENABLED)) {
  pci_info(dev, "BIOS has allocated no shadow GTT; disabling IOMMU for graphics\n");
  dmar_map_gfx = 0;
 } else if (dmar_map_gfx) {

  pci_info(dev, "Disabling batched IOTLB flush on Ironlake\n");
  intel_iommu_strict = 1;
       }
}
