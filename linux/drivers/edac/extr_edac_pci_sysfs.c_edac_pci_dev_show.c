
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct edac_pci_dev_attribute {int value; int (* show ) (int ,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (int ,char*) ;

__attribute__((used)) static ssize_t edac_pci_dev_show(struct kobject *kobj, struct attribute *attr,
     char *buffer)
{
 struct edac_pci_dev_attribute *edac_pci_dev;
 edac_pci_dev = (struct edac_pci_dev_attribute *)attr;

 if (edac_pci_dev->show)
  return edac_pci_dev->show(edac_pci_dev->value, buffer);
 return -EIO;
}
