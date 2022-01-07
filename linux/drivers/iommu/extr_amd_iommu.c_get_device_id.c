
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ dev_is_pci (struct device*) ;
 int get_acpihid_device_id (struct device*,int *) ;
 int get_pci_device_id (struct device*) ;

__attribute__((used)) static inline int get_device_id(struct device *dev)
{
 int devid;

 if (dev_is_pci(dev))
  devid = get_pci_device_id(dev);
 else
  devid = get_acpihid_device_id(dev, ((void*)0));

 return devid;
}
