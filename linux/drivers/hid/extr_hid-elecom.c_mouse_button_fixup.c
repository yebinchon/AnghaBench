
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int MOUSE_BUTTONS_MAX ;
 int clamp (int,int ,int) ;
 int hid_info (struct hid_device*,char*) ;

__attribute__((used)) static void mouse_button_fixup(struct hid_device *hdev,
          __u8 *rdesc, unsigned int rsize,
          int nbuttons)
{
 if (rsize < 32 || rdesc[12] != 0x95 ||
     rdesc[14] != 0x75 || rdesc[15] != 0x01 ||
     rdesc[20] != 0x29 || rdesc[30] != 0x75)
  return;
 hid_info(hdev, "Fixing up Elecom mouse button count\n");
 nbuttons = clamp(nbuttons, 0, MOUSE_BUTTONS_MAX);
 rdesc[13] = nbuttons;
 rdesc[21] = nbuttons;
 rdesc[31] = MOUSE_BUTTONS_MAX - nbuttons;
}
