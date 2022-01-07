
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lenovo_drvdata_tpkbd {int led_mute; int led_micmute; } ;
struct TYPE_2__ {int kobj; } ;
struct hid_device {TYPE_1__ dev; } ;


 struct lenovo_drvdata_tpkbd* hid_get_drvdata (struct hid_device*) ;
 int led_classdev_unregister (int *) ;
 int lenovo_attr_group_tpkbd ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void lenovo_remove_tpkbd(struct hid_device *hdev)
{
 struct lenovo_drvdata_tpkbd *data_pointer = hid_get_drvdata(hdev);





 if (data_pointer == ((void*)0))
  return;

 sysfs_remove_group(&hdev->dev.kobj,
   &lenovo_attr_group_tpkbd);

 led_classdev_unregister(&data_pointer->led_micmute);
 led_classdev_unregister(&data_pointer->led_mute);
}
