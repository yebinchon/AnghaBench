
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct iommu_group_attribute {int (* store ) (struct iommu_group*,char const*,size_t) ;} ;
struct iommu_group {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct iommu_group*,char const*,size_t) ;
 struct iommu_group* to_iommu_group (struct kobject*) ;
 struct iommu_group_attribute* to_iommu_group_attr (struct attribute*) ;

__attribute__((used)) static ssize_t iommu_group_attr_store(struct kobject *kobj,
          struct attribute *__attr,
          const char *buf, size_t count)
{
 struct iommu_group_attribute *attr = to_iommu_group_attr(__attr);
 struct iommu_group *group = to_iommu_group(kobj);
 ssize_t ret = -EIO;

 if (attr->store)
  ret = attr->store(group, buf, count);
 return ret;
}
