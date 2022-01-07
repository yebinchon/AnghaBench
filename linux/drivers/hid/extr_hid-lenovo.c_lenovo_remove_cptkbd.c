
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct hid_device {TYPE_1__ dev; } ;


 int lenovo_attr_group_cptkbd ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void lenovo_remove_cptkbd(struct hid_device *hdev)
{
 sysfs_remove_group(&hdev->dev.kobj,
   &lenovo_attr_group_cptkbd);
}
