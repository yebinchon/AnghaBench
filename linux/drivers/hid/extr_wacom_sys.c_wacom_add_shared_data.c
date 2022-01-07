
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device_type; } ;
struct wacom_wac {TYPE_2__* shared; TYPE_1__ features; } ;
struct TYPE_4__ {struct hid_device* pen; struct hid_device* touch; } ;
struct wacom_hdev_data {TYPE_2__ shared; int list; struct hid_device* dev; int kref; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WACOM_DEVICETYPE_PEN ;
 int WACOM_DEVICETYPE_TOUCH ;
 int devm_add_action (int *,int (*) (struct wacom*),struct wacom*) ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int kref_init (int *) ;
 struct wacom_hdev_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wacom_hdev_data* wacom_get_hdev_data (struct hid_device*) ;
 int wacom_remove_shared_data (struct wacom*) ;
 int wacom_udev_list ;
 int wacom_udev_list_lock ;

__attribute__((used)) static int wacom_add_shared_data(struct hid_device *hdev)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct wacom_hdev_data *data;
 int retval = 0;

 mutex_lock(&wacom_udev_list_lock);

 data = wacom_get_hdev_data(hdev);
 if (!data) {
  data = kzalloc(sizeof(struct wacom_hdev_data), GFP_KERNEL);
  if (!data) {
   retval = -ENOMEM;
   goto out;
  }

  kref_init(&data->kref);
  data->dev = hdev;
  list_add_tail(&data->list, &wacom_udev_list);
 }

 wacom_wac->shared = &data->shared;

 retval = devm_add_action(&hdev->dev, wacom_remove_shared_data, wacom);
 if (retval) {
  mutex_unlock(&wacom_udev_list_lock);
  wacom_remove_shared_data(wacom);
  return retval;
 }

 if (wacom_wac->features.device_type & WACOM_DEVICETYPE_TOUCH)
  wacom_wac->shared->touch = hdev;
 else if (wacom_wac->features.device_type & WACOM_DEVICETYPE_PEN)
  wacom_wac->shared->pen = hdev;

out:
 mutex_unlock(&wacom_udev_list_lock);
 return retval;
}
