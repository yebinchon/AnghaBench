
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int hid_info (struct hid_device*,char*) ;

__attribute__((used)) static __u8 *ch_report_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int *rsize)
{
 if (*rsize >= 18 && rdesc[11] == 0x3c && rdesc[12] == 0x02) {
  hid_info(hdev, "fixing up Cherry Cymotion report descriptor\n");
  rdesc[11] = rdesc[16] = 0xff;
  rdesc[12] = rdesc[17] = 0x03;
 }
 return rdesc;
}
