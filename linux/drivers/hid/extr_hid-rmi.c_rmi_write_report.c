
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rmi_data {int device_flags; } ;
struct hid_device {int dev; } ;


 int HID_OUTPUT_REPORT ;
 int HID_REQ_SET_REPORT ;
 int RMI_DEVICE_OUTPUT_SET_REPORT ;
 int dev_err (int *,char*,int) ;
 struct rmi_data* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_output_report (struct hid_device*,void*,int) ;
 int hid_hw_raw_request (struct hid_device*,int ,int *,int,int ,int ) ;

__attribute__((used)) static int rmi_write_report(struct hid_device *hdev, u8 *report, int len)
{
 struct rmi_data *data = hid_get_drvdata(hdev);
 int ret;

 if (data->device_flags & RMI_DEVICE_OUTPUT_SET_REPORT) {



  ret = hid_hw_raw_request(hdev, report[0], report,
    len, HID_OUTPUT_REPORT, HID_REQ_SET_REPORT);
 } else {
  ret = hid_hw_output_report(hdev, (void *)report, len);
 }

 if (ret < 0) {
  dev_err(&hdev->dev, "failed to write hid report (%d)\n", ret);
  return ret;
 }

 return ret;
}
