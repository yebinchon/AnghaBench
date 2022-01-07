
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int dummy; } ;
struct hid_device {int product; } ;


 int HID_CONNECT_DEFAULT ;



 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_hw_stop (struct hid_device*) ;
 int hid_parse (struct hid_device*) ;
 int lenovo_probe_cptkbd (struct hid_device*) ;
 int lenovo_probe_tpkbd (struct hid_device*) ;

__attribute__((used)) static int lenovo_probe(struct hid_device *hdev,
  const struct hid_device_id *id)
{
 int ret;

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "hid_parse failed\n");
  goto err;
 }

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
 if (ret) {
  hid_err(hdev, "hid_hw_start failed\n");
  goto err;
 }

 switch (hdev->product) {
 case 128:
  ret = lenovo_probe_tpkbd(hdev);
  break;
 case 129:
 case 130:
  ret = lenovo_probe_cptkbd(hdev);
  break;
 default:
  ret = 0;
  break;
 }
 if (ret)
  goto err_hid;

 return 0;
err_hid:
 hid_hw_stop(hdev);
err:
 return ret;
}
