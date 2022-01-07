
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int * name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int iommu_group_attr_name ;
 int iommu_group_create_file (struct iommu_group*,int *) ;
 int iommu_group_remove_file (struct iommu_group*,int *) ;
 int kfree (int *) ;
 int * kstrdup (char const*,int ) ;

int iommu_group_set_name(struct iommu_group *group, const char *name)
{
 int ret;

 if (group->name) {
  iommu_group_remove_file(group, &iommu_group_attr_name);
  kfree(group->name);
  group->name = ((void*)0);
  if (!name)
   return 0;
 }

 group->name = kstrdup(name, GFP_KERNEL);
 if (!group->name)
  return -ENOMEM;

 ret = iommu_group_create_file(group, &iommu_group_attr_name);
 if (ret) {
  kfree(group->name);
  group->name = ((void*)0);
  return ret;
 }

 return 0;
}
