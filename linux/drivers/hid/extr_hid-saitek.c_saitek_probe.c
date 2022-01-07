
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saitek_sc {unsigned long quirks; int mode; } ;
struct hid_device_id {unsigned long driver_data; } ;
struct hid_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_DEFAULT ;
 struct saitek_sc* devm_kzalloc (int *,int,int ) ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct saitek_sc*) ;

__attribute__((used)) static int saitek_probe(struct hid_device *hdev,
  const struct hid_device_id *id)
{
 unsigned long quirks = id->driver_data;
 struct saitek_sc *ssc;
 int ret;

 ssc = devm_kzalloc(&hdev->dev, sizeof(*ssc), GFP_KERNEL);
 if (ssc == ((void*)0)) {
  hid_err(hdev, "can't alloc saitek descriptor\n");
  return -ENOMEM;
 }

 ssc->quirks = quirks;
 ssc->mode = -1;

 hid_set_drvdata(hdev, ssc);

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
