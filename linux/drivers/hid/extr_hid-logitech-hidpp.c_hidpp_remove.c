
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidpp_device {int send_mutex; int work; } ;
struct TYPE_2__ {int kobj; } ;
struct hid_device {TYPE_1__ dev; } ;


 int cancel_work_sync (int *) ;
 struct hidpp_device* hid_get_drvdata (struct hid_device*) ;
 void hid_hw_stop (struct hid_device*) ;
 int mutex_destroy (int *) ;
 int ps_attribute_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void hidpp_remove(struct hid_device *hdev)
{
 struct hidpp_device *hidpp = hid_get_drvdata(hdev);

 if (!hidpp)
  return hid_hw_stop(hdev);

 sysfs_remove_group(&hdev->dev.kobj, &ps_attribute_group);

 hid_hw_stop(hdev);
 cancel_work_sync(&hidpp->work);
 mutex_destroy(&hidpp->send_mutex);
}
