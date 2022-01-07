
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group_attribute {int attr; } ;
struct iommu_group {int kobj; } ;


 int sysfs_create_file (int *,int *) ;

__attribute__((used)) static int iommu_group_create_file(struct iommu_group *group,
       struct iommu_group_attribute *attr)
{
 return sysfs_create_file(&group->kobj, &attr->attr);
}
