
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt_device {int release_timer; } ;
struct TYPE_2__ {int kobj; } ;
struct hid_device {TYPE_1__ dev; } ;


 int del_timer_sync (int *) ;
 struct mt_device* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int mt_attribute_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void mt_remove(struct hid_device *hdev)
{
 struct mt_device *td = hid_get_drvdata(hdev);

 del_timer_sync(&td->release_timer);

 sysfs_remove_group(&hdev->dev.kobj, &mt_attribute_group);
 hid_hw_stop(hdev);
}
