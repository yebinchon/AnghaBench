
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int hid_info (struct hid_device*,char*) ;

__attribute__((used)) static __u8 *zc_report_fixup(struct hid_device *hdev, __u8 *rdesc,
 unsigned int *rsize)
{
 if (*rsize >= 253 &&
  rdesc[0x96] == 0xbc && rdesc[0x97] == 0xff &&
  rdesc[0xca] == 0xbc && rdesc[0xcb] == 0xff &&
  rdesc[0xe1] == 0xbc && rdesc[0xe2] == 0xff) {
   hid_info(hdev,
    "fixing up zydacron remote control report descriptor\n");
   rdesc[0x96] = rdesc[0xca] = rdesc[0xe1] = 0x0c;
   rdesc[0x97] = rdesc[0xcb] = rdesc[0xe2] = 0x00;
  }
 return rdesc;
}
