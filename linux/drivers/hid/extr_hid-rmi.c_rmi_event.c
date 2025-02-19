
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_data {int device_flags; int reset_work; } ;
struct hid_usage {int hid; } ;
struct hid_field {scalar_t__ application; } ;
struct hid_device {int dummy; } ;
typedef int __s32 ;


 scalar_t__ HID_GD_MOUSE ;
 scalar_t__ HID_GD_POINTER ;
 int HID_GD_X ;
 int HID_GD_Y ;
 int HID_UP_BUTTON ;
 int HID_USAGE_PAGE ;
 int RMI_DEVICE ;
 int RMI_DEVICE_HAS_PHYS_BUTTONS ;
 struct rmi_data* hid_get_drvdata (struct hid_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int rmi_event(struct hid_device *hdev, struct hid_field *field,
   struct hid_usage *usage, __s32 value)
{
 struct rmi_data *data = hid_get_drvdata(hdev);

 if ((data->device_flags & RMI_DEVICE) &&
     (field->application == HID_GD_POINTER ||
     field->application == HID_GD_MOUSE)) {
  if (data->device_flags & RMI_DEVICE_HAS_PHYS_BUTTONS) {
   if ((usage->hid & HID_USAGE_PAGE) == HID_UP_BUTTON)
    return 0;

   if ((usage->hid == HID_GD_X || usage->hid == HID_GD_Y)
       && !value)
    return 1;
  }

  schedule_work(&data->reset_work);
  return 1;
 }

 return 0;
}
