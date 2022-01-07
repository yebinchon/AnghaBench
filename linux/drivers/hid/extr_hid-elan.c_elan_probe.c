
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int driver_data; } ;
struct hid_device {int dev; } ;
struct elan_drvdata {int input; } ;


 int ELAN_HAS_LED ;
 int ENAVAIL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_DEFAULT ;
 struct elan_drvdata* devm_kzalloc (int *,int,int ) ;
 int elan_init_mute_led (struct hid_device*) ;
 int elan_start_multitouch (struct hid_device*) ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_hw_stop (struct hid_device*) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct elan_drvdata*) ;
 scalar_t__ is_not_elan_touchpad (struct hid_device*) ;

__attribute__((used)) static int elan_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int ret;
 struct elan_drvdata *drvdata;

 drvdata = devm_kzalloc(&hdev->dev, sizeof(*drvdata), GFP_KERNEL);

 if (!drvdata)
  return -ENOMEM;

 hid_set_drvdata(hdev, drvdata);

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "Hid Parse failed\n");
  return ret;
 }

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
 if (ret) {
  hid_err(hdev, "Hid hw start failed\n");
  return ret;
 }

 if (is_not_elan_touchpad(hdev))
  return 0;

 if (!drvdata->input) {
  hid_err(hdev, "Input device is not registered\n");
  ret = -ENAVAIL;
  goto err;
 }

 ret = elan_start_multitouch(hdev);
 if (ret)
  goto err;

 if (id->driver_data & ELAN_HAS_LED) {
  ret = elan_init_mute_led(hdev);
  if (ret)
   goto err;
 }

 return 0;
err:
 hid_hw_stop(hdev);
 return ret;
}
