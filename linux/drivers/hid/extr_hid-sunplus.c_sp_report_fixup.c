
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int hid_info (struct hid_device*,char*) ;

__attribute__((used)) static __u8 *sp_report_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int *rsize)
{
 if (*rsize >= 112 && rdesc[104] == 0x26 && rdesc[105] == 0x80 &&
   rdesc[106] == 0x03) {
  hid_info(hdev, "fixing up Sunplus Wireless Desktop report descriptor\n");
  rdesc[105] = rdesc[110] = 0x03;
  rdesc[106] = rdesc[111] = 0x21;
 }
 return rdesc;
}
