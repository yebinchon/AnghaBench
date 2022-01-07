
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int HID_MAX_USAGES ;
 int hid_info (struct hid_device*,char*) ;

__attribute__((used)) static __u8 *cougar_report_fixup(struct hid_device *hdev, __u8 *rdesc,
     unsigned int *rsize)
{
 if (rdesc[2] == 0x09 && rdesc[3] == 0x02 &&
     (rdesc[115] | rdesc[116] << 8) >= HID_MAX_USAGES) {
  hid_info(hdev,
   "usage count exceeds max: fixing up report descriptor\n");
  rdesc[115] = ((HID_MAX_USAGES-1) & 0xff);
  rdesc[116] = ((HID_MAX_USAGES-1) >> 8);
 }
 return rdesc;
}
