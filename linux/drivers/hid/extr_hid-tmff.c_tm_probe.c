
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {scalar_t__ driver_data; } ;
struct hid_device {int dummy; } ;


 int HID_CONNECT_DEFAULT ;
 int HID_CONNECT_FF ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int) ;
 int hid_parse (struct hid_device*) ;
 int tmff_init (struct hid_device*,void*) ;

__attribute__((used)) static int tm_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int ret;

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

 tmff_init(hdev, (void *)id->driver_data);

 return 0;
err:
 return ret;
}
