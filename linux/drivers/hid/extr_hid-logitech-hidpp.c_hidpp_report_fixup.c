
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_device {int quirks; } ;
struct hid_device {scalar_t__ group; } ;


 int HIDPP_QUIRK_HIDPP_CONSUMER_VENDOR_KEYS ;
 scalar_t__ HID_GROUP_LOGITECH_27MHZ_DEVICE ;
 struct hidpp_device* hid_get_drvdata (struct hid_device*) ;
 int * hidpp10_consumer_keys_report_fixup (struct hidpp_device*,int *,unsigned int*) ;

__attribute__((used)) static u8 *hidpp_report_fixup(struct hid_device *hdev, u8 *rdesc,
         unsigned int *rsize)
{
 struct hidpp_device *hidpp = hid_get_drvdata(hdev);

 if (!hidpp)
  return rdesc;


 if (hdev->group == HID_GROUP_LOGITECH_27MHZ_DEVICE ||
     (hidpp->quirks & HIDPP_QUIRK_HIDPP_CONSUMER_VENDOR_KEYS))
  rdesc = hidpp10_consumer_keys_report_fixup(hidpp, rdesc, rsize);

 return rdesc;
}
