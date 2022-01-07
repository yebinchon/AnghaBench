
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int product; } ;
typedef int __u8 ;
 int hid_info (struct hid_device*,char*) ;
 int mouse_button_fixup (struct hid_device*,int*,unsigned int,int) ;

__attribute__((used)) static __u8 *elecom_report_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int *rsize)
{
 switch (hdev->product) {
 case 135:


  if (*rsize >= 48 && rdesc[46] == 0x05 && rdesc[47] == 0x0c) {
   hid_info(hdev, "Fixing up Elecom BM084 report descriptor\n");
   rdesc[47] = 0x00;
  }
  break;
 case 129:
 case 130:
 case 128:
  mouse_button_fixup(hdev, rdesc, *rsize, 6);
  break;
 case 133:
 case 134:
 case 131:
 case 132:
  mouse_button_fixup(hdev, rdesc, *rsize, 8);
  break;
 }
 return rdesc;
}
