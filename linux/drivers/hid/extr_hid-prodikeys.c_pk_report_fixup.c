
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int hid_info (struct hid_device*,char*) ;

__attribute__((used)) static __u8 *pk_report_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int *rsize)
{
 if (*rsize == 178 &&
       rdesc[111] == 0x06 && rdesc[112] == 0x00 &&
       rdesc[113] == 0xff) {
  hid_info(hdev,
    "fixing up pc-midi keyboard report descriptor\n");

  rdesc[144] = 0x18;
 }
 return rdesc;
}
