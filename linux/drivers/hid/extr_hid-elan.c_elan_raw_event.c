
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct elan_drvdata {int dummy; } ;


 int ELAN_I2C_REPORT_SIZE ;
 int ELAN_INPUT_REPORT_SIZE ;
 scalar_t__ ELAN_MT_FIRST_FINGER ;
 scalar_t__ ELAN_MT_I2C ;
 scalar_t__ ELAN_MT_SECOND_FINGER ;
 scalar_t__ ELAN_SINGLE_FINGER ;
 int elan_i2c_report_input (struct elan_drvdata*,scalar_t__*) ;
 int elan_usb_report_input (struct elan_drvdata*,scalar_t__*) ;
 struct elan_drvdata* hid_get_drvdata (struct hid_device*) ;
 scalar_t__ is_not_elan_touchpad (struct hid_device*) ;

__attribute__((used)) static int elan_raw_event(struct hid_device *hdev,
     struct hid_report *report, u8 *data, int size)
{
 struct elan_drvdata *drvdata = hid_get_drvdata(hdev);

 if (is_not_elan_touchpad(hdev))
  return 0;

 if (data[0] == ELAN_SINGLE_FINGER ||
     data[0] == ELAN_MT_FIRST_FINGER ||
     data[0] == ELAN_MT_SECOND_FINGER) {
  if (size == ELAN_INPUT_REPORT_SIZE) {
   elan_usb_report_input(drvdata, data);
   return 1;
  }
 }

 if (data[0] == ELAN_MT_I2C && size == ELAN_I2C_REPORT_SIZE) {
  elan_i2c_report_input(drvdata, data);
  return 1;
 }

 return 0;
}
