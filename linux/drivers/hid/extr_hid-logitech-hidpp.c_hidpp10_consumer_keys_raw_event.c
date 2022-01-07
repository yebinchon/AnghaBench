
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_device {int hid_dev; } ;


 int HIDPP_SUB_ID_CONSUMER_VENDOR_KEYS ;
 int HID_INPUT_REPORT ;
 int REPORT_ID_HIDPP_SHORT ;
 int hid_report_raw_event (int ,int ,int*,int,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int hidpp10_consumer_keys_raw_event(struct hidpp_device *hidpp,
        u8 *data, int size)
{
 u8 consumer_report[5];

 if (size < 7)
  return 0;

 if (data[0] != REPORT_ID_HIDPP_SHORT ||
     data[2] != HIDPP_SUB_ID_CONSUMER_VENDOR_KEYS)
  return 0;





 consumer_report[0] = 0x03;
 memcpy(&consumer_report[1], &data[3], 4);

 hid_report_raw_event(hidpp->hid_dev, HID_INPUT_REPORT,
        consumer_report, 5, 1);

 return 1;
}
