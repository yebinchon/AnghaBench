
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int dummy; } ;
struct hid_device {int dev; } ;


 int HID_CONNECT_DEFAULT ;
 int HID_CONNECT_FF ;
 int axff_init (struct hid_device*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_open (struct hid_device*) ;
 int hid_hw_start (struct hid_device*,int) ;
 int hid_hw_stop (struct hid_device*) ;
 int hid_parse (struct hid_device*) ;
 int hid_warn (struct hid_device*,char*,int) ;

__attribute__((used)) static int ax_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int error;

 dev_dbg(&hdev->dev, "ACRUX HID hardware probe...\n");

 error = hid_parse(hdev);
 if (error) {
  hid_err(hdev, "parse failed\n");
  return error;
 }

 error = hid_hw_start(hdev, HID_CONNECT_DEFAULT & ~HID_CONNECT_FF);
 if (error) {
  hid_err(hdev, "hw start failed\n");
  return error;
 }

 error = axff_init(hdev);
 if (error) {




  hid_warn(hdev,
    "Failed to enable force feedback support, error: %d\n",
    error);
 }





 error = hid_hw_open(hdev);
 if (error) {
  dev_err(&hdev->dev, "hw open failed\n");
  hid_hw_stop(hdev);
  return error;
 }

 return 0;
}
