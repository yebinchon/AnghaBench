
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int dummy; } ;
struct hid_device {int quirks; } ;


 int HID_CONNECT_DEFAULT ;
 int HID_QUIRK_INPUT_PER_APP ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_parse (struct hid_device*) ;

__attribute__((used)) static int hid_generic_probe(struct hid_device *hdev,
        const struct hid_device_id *id)
{
 int ret;

 hdev->quirks |= HID_QUIRK_INPUT_PER_APP;

 ret = hid_parse(hdev);
 if (ret)
  return ret;

 return hid_hw_start(hdev, HID_CONNECT_DEFAULT);
}
