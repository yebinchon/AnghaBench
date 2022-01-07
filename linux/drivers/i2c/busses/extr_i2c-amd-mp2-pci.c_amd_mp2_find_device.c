
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
struct amd_mp2_dev {int dummy; } ;
struct TYPE_2__ {int driver; } ;


 TYPE_1__ amd_mp2_pci_driver ;
 struct device* driver_find_next_device (int *,int *) ;
 scalar_t__ pci_get_drvdata (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

struct amd_mp2_dev *amd_mp2_find_device(void)
{
 struct device *dev;
 struct pci_dev *pci_dev;

 dev = driver_find_next_device(&amd_mp2_pci_driver.driver, ((void*)0));
 if (!dev)
  return ((void*)0);

 pci_dev = to_pci_dev(dev);
 return (struct amd_mp2_dev *)pci_get_drvdata(pci_dev);
}
