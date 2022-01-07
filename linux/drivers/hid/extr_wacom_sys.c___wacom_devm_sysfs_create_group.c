
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_sysfs_group_devres {struct kobject* root; struct attribute_group* group; } ;
struct wacom {TYPE_1__* hdev; } ;
struct kobject {int dummy; } ;
struct attribute_group {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devres_add (int *,struct wacom_sysfs_group_devres*) ;
 struct wacom_sysfs_group_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct wacom_sysfs_group_devres*) ;
 int sysfs_create_group (struct kobject*,struct attribute_group*) ;
 int wacom_devm_sysfs_group_release ;

__attribute__((used)) static int __wacom_devm_sysfs_create_group(struct wacom *wacom,
        struct kobject *root,
        struct attribute_group *group)
{
 struct wacom_sysfs_group_devres *devres;
 int error;

 devres = devres_alloc(wacom_devm_sysfs_group_release,
         sizeof(struct wacom_sysfs_group_devres),
         GFP_KERNEL);
 if (!devres)
  return -ENOMEM;

 devres->group = group;
 devres->root = root;

 error = sysfs_create_group(devres->root, group);
 if (error) {
  devres_free(devres);
  return error;
 }

 devres_add(&wacom->hdev->dev, devres);

 return 0;
}
