
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 int pci_dev_id (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static inline u16 get_pci_device_id(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);

 return pci_dev_id(pdev);
}
