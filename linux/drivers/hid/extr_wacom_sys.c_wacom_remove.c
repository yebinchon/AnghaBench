
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {int device_type; scalar_t__ type; } ;
struct wacom_wac {int pen_fifo; struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; int mode_change_work; int remote_work; int battery_work; int wireless_work; int init_work; } ;
struct hid_device {scalar_t__ bus; int dev; } ;


 scalar_t__ BUS_BLUETOOTH ;
 scalar_t__ REMOTE ;
 int WACOM_DEVICETYPE_WL_MONITOR ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int dev_attr_speed ;
 int device_remove_file (int *,int *) ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_close (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int kfifo_free (int *) ;
 int wacom_led_groups_release (struct wacom*) ;
 int wacom_release_resources (struct wacom*) ;

__attribute__((used)) static void wacom_remove(struct hid_device *hdev)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct wacom_features *features = &wacom_wac->features;

 if (features->device_type & WACOM_DEVICETYPE_WL_MONITOR)
  hid_hw_close(hdev);

 hid_hw_stop(hdev);

 cancel_delayed_work_sync(&wacom->init_work);
 cancel_work_sync(&wacom->wireless_work);
 cancel_work_sync(&wacom->battery_work);
 cancel_work_sync(&wacom->remote_work);
 cancel_work_sync(&wacom->mode_change_work);
 if (hdev->bus == BUS_BLUETOOTH)
  device_remove_file(&hdev->dev, &dev_attr_speed);


 wacom_led_groups_release(wacom);

 if (wacom->wacom_wac.features.type != REMOTE)
  wacom_release_resources(wacom);

 kfifo_free(&wacom_wac->pen_fifo);
}
