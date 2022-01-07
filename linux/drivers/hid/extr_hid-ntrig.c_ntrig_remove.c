
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct hid_device {TYPE_1__ dev; } ;


 int hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int kfree (int ) ;
 int ntrig_attribute_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void ntrig_remove(struct hid_device *hdev)
{
 sysfs_remove_group(&hdev->dev.kobj,
      &ntrig_attribute_group);
 hid_hw_stop(hdev);
 kfree(hid_get_drvdata(hdev));
}
