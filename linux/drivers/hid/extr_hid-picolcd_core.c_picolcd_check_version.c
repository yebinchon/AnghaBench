
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_pending {int raw_size; int * raw_data; } ;
struct picolcd_data {int status; int * version; } ;
struct hid_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int PICOLCD_BOOTLOADER ;
 int REPORT_VERSION ;
 int hid_err (struct hid_device*,char*) ;
 struct picolcd_data* hid_get_drvdata (struct hid_device*) ;
 int hid_info (struct hid_device*,char*,int ,int ) ;
 int kfree (struct picolcd_pending*) ;
 struct picolcd_pending* picolcd_send_and_wait (struct hid_device*,int ,int *,int ) ;

__attribute__((used)) static int picolcd_check_version(struct hid_device *hdev)
{
 struct picolcd_data *data = hid_get_drvdata(hdev);
 struct picolcd_pending *verinfo;
 int ret = 0;

 if (!data)
  return -ENODEV;

 verinfo = picolcd_send_and_wait(hdev, REPORT_VERSION, ((void*)0), 0);
 if (!verinfo) {
  hid_err(hdev, "no version response from PicoLCD\n");
  return -ENODEV;
 }

 if (verinfo->raw_size == 2) {
  data->version[0] = verinfo->raw_data[1];
  data->version[1] = verinfo->raw_data[0];
  if (data->status & PICOLCD_BOOTLOADER) {
   hid_info(hdev, "PicoLCD, bootloader version %d.%d\n",
     verinfo->raw_data[1], verinfo->raw_data[0]);
  } else {
   hid_info(hdev, "PicoLCD, firmware version %d.%d\n",
     verinfo->raw_data[1], verinfo->raw_data[0]);
  }
 } else {
  hid_err(hdev, "confused, got unexpected version response from PicoLCD\n");
  ret = -EINVAL;
 }
 kfree(verinfo);
 return ret;
}
