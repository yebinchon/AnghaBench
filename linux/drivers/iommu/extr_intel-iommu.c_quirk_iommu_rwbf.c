
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_info (struct pci_dev*,char*) ;
 int rwbf_quirk ;

__attribute__((used)) static void quirk_iommu_rwbf(struct pci_dev *dev)
{




 pci_info(dev, "Forcing write-buffer flush capability\n");
 rwbf_quirk = 1;
}
