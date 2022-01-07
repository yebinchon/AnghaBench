
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct instance_attribute {int (* store ) (struct edac_pci_ctl_info*,char const*,size_t) ;} ;
struct edac_pci_ctl_info {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct edac_pci_ctl_info*,char const*,size_t) ;
 struct edac_pci_ctl_info* to_instance (struct kobject*) ;
 struct instance_attribute* to_instance_attr (struct attribute*) ;

__attribute__((used)) static ssize_t edac_pci_instance_store(struct kobject *kobj,
    struct attribute *attr,
    const char *buffer, size_t count)
{
 struct edac_pci_ctl_info *pci = to_instance(kobj);
 struct instance_attribute *instance_attr = to_instance_attr(attr);

 if (instance_attr->store)
  return instance_attr->store(pci, buffer, count);
 return -EIO;
}
