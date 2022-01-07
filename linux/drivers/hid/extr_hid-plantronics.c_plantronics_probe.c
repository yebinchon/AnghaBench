
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int dummy; } ;
struct hid_device {int dummy; } ;


 int HID_CONNECT_DEFAULT ;
 int HID_CONNECT_HIDDEV_FORCE ;
 int HID_CONNECT_HIDINPUT_FORCE ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,void*) ;
 scalar_t__ plantronics_device_type (struct hid_device*) ;

__attribute__((used)) static int plantronics_probe(struct hid_device *hdev,
        const struct hid_device_id *id)
{
 int ret;

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "parse failed\n");
  goto err;
 }

 hid_set_drvdata(hdev, (void *)plantronics_device_type(hdev));

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT |
  HID_CONNECT_HIDINPUT_FORCE | HID_CONNECT_HIDDEV_FORCE);
 if (ret)
  hid_err(hdev, "hw start failed\n");

err:
 return ret;
}
