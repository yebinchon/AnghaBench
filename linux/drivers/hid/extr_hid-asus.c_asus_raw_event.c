
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct asus_drvdata {scalar_t__ tp; scalar_t__ battery; } ;


 scalar_t__ BATTERY_REPORT_ID ;
 scalar_t__ INPUT_REPORT_ID ;
 int asus_report_battery (struct asus_drvdata*,scalar_t__*,int) ;
 int asus_report_input (struct asus_drvdata*,scalar_t__*,int) ;
 struct asus_drvdata* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int asus_raw_event(struct hid_device *hdev,
  struct hid_report *report, u8 *data, int size)
{
 struct asus_drvdata *drvdata = hid_get_drvdata(hdev);

 if (drvdata->battery && data[0] == BATTERY_REPORT_ID)
  return asus_report_battery(drvdata, data, size);

 if (drvdata->tp && data[0] == INPUT_REPORT_ID)
  return asus_report_input(drvdata, data, size);

 return 0;
}
