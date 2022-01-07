
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_data {int device_flags; } ;
struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int HID_UP_BUTTON ;
 int HID_USAGE_PAGE ;
 int RMI_DEVICE ;
 int RMI_DEVICE_HAS_PHYS_BUTTONS ;
 struct rmi_data* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int rmi_input_mapping(struct hid_device *hdev,
  struct hid_input *hi, struct hid_field *field,
  struct hid_usage *usage, unsigned long **bit, int *max)
{
 struct rmi_data *data = hid_get_drvdata(hdev);





 if (data->device_flags & RMI_DEVICE) {
  if ((data->device_flags & RMI_DEVICE_HAS_PHYS_BUTTONS) &&
      ((usage->hid & HID_USAGE_PAGE) == HID_UP_BUTTON))
   return 0;

  return -1;
 }

 return 0;
}
