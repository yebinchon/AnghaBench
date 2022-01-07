
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int HID_OUTPUT_REPORT ;
 int i2c_hid_output_raw_report (struct hid_device*,int *,size_t,int ,int) ;

__attribute__((used)) static int i2c_hid_output_report(struct hid_device *hid, __u8 *buf,
  size_t count)
{
 return i2c_hid_output_raw_report(hid, buf, count, HID_OUTPUT_REPORT,
   0);
}
