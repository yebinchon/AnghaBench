
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {unsigned long driver_data; } ;
struct hid_device {int dummy; } ;


 unsigned long BELKIN_HIDDEV ;
 int HID_CONNECT_DEFAULT ;
 int HID_CONNECT_HIDDEV_FORCE ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,void*) ;

__attribute__((used)) static int belkin_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 unsigned long quirks = id->driver_data;
 int ret;

 hid_set_drvdata(hdev, (void *)quirks);

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "parse failed\n");
  goto err_free;
 }

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT |
  ((quirks & BELKIN_HIDDEV) ? HID_CONNECT_HIDDEV_FORCE : 0));
 if (ret) {
  hid_err(hdev, "hw start failed\n");
  goto err_free;
 }

 return 0;
err_free:
 return ret;
}
