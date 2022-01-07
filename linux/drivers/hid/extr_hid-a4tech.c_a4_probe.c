
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int driver_data; } ;
struct hid_device {int dev; } ;
struct a4tech_sc {int quirks; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_DEFAULT ;
 struct a4tech_sc* devm_kzalloc (int *,int,int ) ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct a4tech_sc*) ;

__attribute__((used)) static int a4_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 struct a4tech_sc *a4;
 int ret;

 a4 = devm_kzalloc(&hdev->dev, sizeof(*a4), GFP_KERNEL);
 if (a4 == ((void*)0)) {
  hid_err(hdev, "can't alloc device descriptor\n");
  return -ENOMEM;
 }

 a4->quirks = id->driver_data;

 hid_set_drvdata(hdev, a4);

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "parse failed\n");
  return ret;
 }

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
 if (ret) {
  hid_err(hdev, "hw start failed\n");
  return ret;
 }

 return 0;
}
