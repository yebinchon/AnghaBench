
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_DEVFN (unsigned int,unsigned int) ;
 int edac_dbg (int,char*,unsigned int,unsigned int,unsigned int) ;
 int pci_dev_get (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int,unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct pci_dev *pci_get_dev_wrapper(int dom, unsigned int bus,
        unsigned int dev, unsigned int fun)
{
 struct pci_dev *pdev;

 pdev = pci_get_domain_bus_and_slot(dom, bus, PCI_DEVFN(dev, fun));
 if (!pdev) {
  edac_dbg(2, "No device %02x:%02x.%x\n",
    bus, dev, fun);
  return ((void*)0);
 }

 if (unlikely(pci_enable_device(pdev) < 0)) {
  edac_dbg(2, "Failed to enable device %02x:%02x.%x\n",
    bus, dev, fun);
  return ((void*)0);
 }

 pci_dev_get(pdev);

 return pdev;
}
