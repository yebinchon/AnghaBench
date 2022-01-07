
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct asus_drvdata {int battery_in_query; int hdev; } ;


 int BATTERY_REPORT_ID ;
 int BATTERY_REPORT_SIZE ;
 int ENODATA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_INPUT_REPORT ;
 int HID_REQ_GET_REPORT ;
 int asus_parse_battery (struct asus_drvdata*,int *,int) ;
 int hid_hw_raw_request (int ,int ,int *,int,int ,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int asus_battery_query(struct asus_drvdata *drvdata)
{
 u8 *buf;
 int ret = 0;

 buf = kmalloc(BATTERY_REPORT_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 drvdata->battery_in_query = 1;
 ret = hid_hw_raw_request(drvdata->hdev, BATTERY_REPORT_ID,
    buf, BATTERY_REPORT_SIZE,
    HID_INPUT_REPORT, HID_REQ_GET_REPORT);
 drvdata->battery_in_query = 0;
 if (ret == BATTERY_REPORT_SIZE)
  ret = asus_parse_battery(drvdata, buf, BATTERY_REPORT_SIZE);
 else
  ret = -ENODATA;

 kfree(buf);

 return ret;
}
