
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int HID_OUTPUT_REPORT ;
 int uhid_hid_output_raw (struct hid_device*,int *,size_t,int ) ;

__attribute__((used)) static int uhid_hid_output_report(struct hid_device *hid, __u8 *buf,
      size_t count)
{
 return uhid_hid_output_raw(hid, buf, count, HID_OUTPUT_REPORT);
}
