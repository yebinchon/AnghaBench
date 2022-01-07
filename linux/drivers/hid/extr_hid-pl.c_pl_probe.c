
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {scalar_t__ driver_data; } ;
struct hid_device {int quirks; } ;


 int HID_CONNECT_DEFAULT ;
 int HID_CONNECT_FF ;
 int HID_QUIRK_MULTI_INPUT ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int) ;
 int hid_parse (struct hid_device*) ;
 int plff_init (struct hid_device*) ;

__attribute__((used)) static int pl_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int ret;

 if (id->driver_data)
  hdev->quirks |= HID_QUIRK_MULTI_INPUT;

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "parse failed\n");
  goto err;
 }

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT & ~HID_CONNECT_FF);
 if (ret) {
  hid_err(hdev, "hw start failed\n");
  goto err;
 }

 plff_init(hdev);

 return 0;
err:
 return ret;
}
