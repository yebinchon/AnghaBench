
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct iommu_group_attribute {int (* show ) (struct iommu_group*,char*) ;} ;
struct iommu_group {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct iommu_group*,char*) ;
 struct iommu_group* to_iommu_group (struct kobject*) ;
 struct iommu_group_attribute* to_iommu_group_attr (struct attribute*) ;

__attribute__((used)) static ssize_t iommu_group_attr_show(struct kobject *kobj,
         struct attribute *__attr, char *buf)
{
 struct iommu_group_attribute *attr = to_iommu_group_attr(__attr);
 struct iommu_group *group = to_iommu_group(kobj);
 ssize_t ret = -EIO;

 if (attr->show)
  ret = attr->show(group, buf);
 return ret;
}
