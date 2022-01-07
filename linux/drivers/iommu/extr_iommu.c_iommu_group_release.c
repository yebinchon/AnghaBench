
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct iommu_group {struct iommu_group* name; scalar_t__ default_domain; int id; int iommu_data; int (* iommu_data_release ) (int ) ;} ;


 int ida_simple_remove (int *,int ) ;
 int iommu_domain_free (scalar_t__) ;
 int iommu_group_ida ;
 int kfree (struct iommu_group*) ;
 int pr_debug (char*,int ) ;
 int stub1 (int ) ;
 struct iommu_group* to_iommu_group (struct kobject*) ;

__attribute__((used)) static void iommu_group_release(struct kobject *kobj)
{
 struct iommu_group *group = to_iommu_group(kobj);

 pr_debug("Releasing group %d\n", group->id);

 if (group->iommu_data_release)
  group->iommu_data_release(group->iommu_data);

 ida_simple_remove(&iommu_group_ida, group->id);

 if (group->default_domain)
  iommu_domain_free(group->default_domain);

 kfree(group->name);
 kfree(group);
}
