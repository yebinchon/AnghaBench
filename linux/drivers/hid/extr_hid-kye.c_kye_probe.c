
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int product; } ;
struct hid_device {int dummy; } ;


 int HID_CONNECT_DEFAULT ;







 int hid_err (struct hid_device*,char*) ;
 int hid_hw_close (struct hid_device*) ;
 int hid_hw_open (struct hid_device*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_hw_stop (struct hid_device*) ;
 int hid_parse (struct hid_device*) ;
 int kye_tablet_enable (struct hid_device*) ;

__attribute__((used)) static int kye_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int ret;

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "parse failed\n");
  goto err;
 }

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
 if (ret) {
  hid_err(hdev, "hw start failed\n");
  goto err;
 }

 switch (id->product) {
 case 133:
 case 130:
 case 129:
 case 131:
 case 132:
 case 128:
  ret = kye_tablet_enable(hdev);
  if (ret) {
   hid_err(hdev, "tablet enabling failed\n");
   goto enabling_err;
  }
  break;
 case 134:




  if (hid_hw_open(hdev))
   hid_hw_close(hdev);
  break;
 }

 return 0;
enabling_err:
 hid_hw_stop(hdev);
err:
 return ret;
}
