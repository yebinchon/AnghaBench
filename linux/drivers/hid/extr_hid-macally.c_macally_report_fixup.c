
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int hid_info (struct hid_device*,char*) ;

__attribute__((used)) static __u8 *macally_report_fixup(struct hid_device *hdev, __u8 *rdesc,
     unsigned int *rsize)
{
 if (*rsize >= 60 && rdesc[53] == 0x65 && rdesc[59] == 0x65) {
  hid_info(hdev,
   "fixing up Macally ikey keyboard report descriptor\n");
  rdesc[53] = rdesc[59] = 0x67;
 }
 return rdesc;
}
