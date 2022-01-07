
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kset; } ;
struct iommu_group {int id; TYPE_1__ kobj; int devices_kobj; int notifier; int devices; int mutex; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int ENOMEM ;
 struct iommu_group* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int iommu_group_attr_reserved_regions ;
 int iommu_group_attr_type ;
 int iommu_group_create_file (struct iommu_group*,int *) ;
 int iommu_group_ida ;
 int iommu_group_kset ;
 int iommu_group_ktype ;
 int kfree (struct iommu_group*) ;
 int kobject_create_and_add (char*,TYPE_1__*) ;
 int kobject_init_and_add (TYPE_1__*,int *,int *,char*,int) ;
 int kobject_put (TYPE_1__*) ;
 struct iommu_group* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_debug (char*,int) ;

struct iommu_group *iommu_group_alloc(void)
{
 struct iommu_group *group;
 int ret;

 group = kzalloc(sizeof(*group), GFP_KERNEL);
 if (!group)
  return ERR_PTR(-ENOMEM);

 group->kobj.kset = iommu_group_kset;
 mutex_init(&group->mutex);
 INIT_LIST_HEAD(&group->devices);
 BLOCKING_INIT_NOTIFIER_HEAD(&group->notifier);

 ret = ida_simple_get(&iommu_group_ida, 0, 0, GFP_KERNEL);
 if (ret < 0) {
  kfree(group);
  return ERR_PTR(ret);
 }
 group->id = ret;

 ret = kobject_init_and_add(&group->kobj, &iommu_group_ktype,
       ((void*)0), "%d", group->id);
 if (ret) {
  ida_simple_remove(&iommu_group_ida, group->id);
  kfree(group);
  return ERR_PTR(ret);
 }

 group->devices_kobj = kobject_create_and_add("devices", &group->kobj);
 if (!group->devices_kobj) {
  kobject_put(&group->kobj);
  return ERR_PTR(-ENOMEM);
 }






 kobject_put(&group->kobj);

 ret = iommu_group_create_file(group,
          &iommu_group_attr_reserved_regions);
 if (ret)
  return ERR_PTR(ret);

 ret = iommu_group_create_file(group, &iommu_group_attr_type);
 if (ret)
  return ERR_PTR(ret);

 pr_debug("Allocated group %d\n", group->id);

 return group;
}
