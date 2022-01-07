
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wacom {TYPE_2__* hdev; } ;
struct attribute_group {int dummy; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int __wacom_devm_sysfs_create_group (struct wacom*,int *,struct attribute_group*) ;

__attribute__((used)) static int wacom_devm_sysfs_create_group(struct wacom *wacom,
      struct attribute_group *group)
{
 return __wacom_devm_sysfs_create_group(wacom, &wacom->hdev->dev.kobj,
            group);
}
