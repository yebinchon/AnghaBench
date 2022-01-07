
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int numa_node; } ;
struct pci_dev {TYPE_1__ dev; } ;


 int PCI_DEVICE_ID_THUNDER_LMC ;
 int PCI_VENDOR_ID_CAVIUM ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;

__attribute__((used)) static unsigned int thunderx_get_num_lmcs(unsigned int node)
{
 unsigned int number = 0;
 struct pci_dev *pdev = ((void*)0);

 do {
  pdev = pci_get_device(PCI_VENDOR_ID_CAVIUM,
          PCI_DEVICE_ID_THUNDER_LMC,
          pdev);
  if (pdev) {




   number++;

  }
 } while (pdev);

 return number;
}
