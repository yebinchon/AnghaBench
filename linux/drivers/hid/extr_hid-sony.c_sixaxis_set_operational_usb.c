
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sony_sc {int quirks; } ;
struct hid_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_GET_REPORT ;
 int SHANWAN_GAMEPAD ;
 int SIXAXIS_REPORT_0xF2_SIZE ;
 int SIXAXIS_REPORT_0xF5_SIZE ;
 int hid_err (struct hid_device*,char*) ;
 struct sony_sc* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_output_report (struct hid_device*,int *,int) ;
 int hid_hw_raw_request (struct hid_device*,int,int *,int ,int ,int ) ;
 int hid_info (struct hid_device*,char*) ;
 int kfree (int *) ;
 int * kmalloc (int const,int ) ;
 int max (int ,int ) ;

__attribute__((used)) static int sixaxis_set_operational_usb(struct hid_device *hdev)
{
 struct sony_sc *sc = hid_get_drvdata(hdev);
 const int buf_size =
  max(SIXAXIS_REPORT_0xF2_SIZE, SIXAXIS_REPORT_0xF5_SIZE);
 u8 *buf;
 int ret;

 buf = kmalloc(buf_size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = hid_hw_raw_request(hdev, 0xf2, buf, SIXAXIS_REPORT_0xF2_SIZE,
     HID_FEATURE_REPORT, HID_REQ_GET_REPORT);
 if (ret < 0) {
  hid_err(hdev, "can't set operational mode: step 1\n");
  goto out;
 }





 ret = hid_hw_raw_request(hdev, 0xf5, buf, SIXAXIS_REPORT_0xF5_SIZE,
     HID_FEATURE_REPORT, HID_REQ_GET_REPORT);
 if (ret < 0) {
  hid_err(hdev, "can't set operational mode: step 2\n");
  goto out;
 }





 if (sc->quirks & SHANWAN_GAMEPAD)
  goto out;

 ret = hid_hw_output_report(hdev, buf, 1);
 if (ret < 0) {
  hid_info(hdev, "can't set operational mode: step 3, ignoring\n");
  ret = 0;
 }

out:
 kfree(buf);

 return ret;
}
