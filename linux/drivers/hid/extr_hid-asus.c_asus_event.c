
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; int type; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
typedef int __s32 ;


 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int hid_warn (struct hid_device*,char*,int) ;

__attribute__((used)) static int asus_event(struct hid_device *hdev, struct hid_field *field,
        struct hid_usage *usage, __s32 value)
{
 if ((usage->hid & HID_USAGE_PAGE) == 0xff310000 &&
     (usage->hid & HID_USAGE) != 0x00 && !usage->type) {
  hid_warn(hdev, "Unmapped Asus vendor usagepage code 0x%02x\n",
    usage->hid & HID_USAGE);
 }

 return 0;
}
