
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wacom_features {int x_fuzz; int y_fuzz; int distance_fuzz; int tilt_fuzz; scalar_t__ type; int device_type; scalar_t__ pressure_fuzz; } ;
struct wacom {struct usb_interface* intf; } ;
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct hid_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int WACOM_DEVICETYPE_NONE ;
 int WACOM_DEVICETYPE_WL_MONITOR ;
 scalar_t__ WIRELESS ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int wacom_parse_hid (struct hid_device*,struct wacom_features*) ;

__attribute__((used)) static void wacom_retrieve_hid_descriptor(struct hid_device *hdev,
      struct wacom_features *features)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct usb_interface *intf = wacom->intf;


 features->x_fuzz = 4;
 features->y_fuzz = 4;
 features->pressure_fuzz = 0;
 features->distance_fuzz = 1;
 features->tilt_fuzz = 1;







 if (features->type == WIRELESS) {
  if (intf->cur_altsetting->desc.bInterfaceNumber == 0)
   features->device_type = WACOM_DEVICETYPE_WL_MONITOR;
  else
   features->device_type = WACOM_DEVICETYPE_NONE;
  return;
 }

 wacom_parse_hid(hdev, features);
}
