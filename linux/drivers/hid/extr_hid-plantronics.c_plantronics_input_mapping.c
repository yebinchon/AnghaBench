
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {unsigned long application; } ;
struct hid_device {int dummy; } ;


 int EV_KEY ;
 unsigned long HID_GD_JOYSTICK ;
 unsigned long HID_USAGE ;
 unsigned long HID_USAGE_PAGE ;
 unsigned short KEY_VOLUMEDOWN ;
 unsigned short KEY_VOLUMEUP ;




 scalar_t__ PLT_ALLOW_CONSUMER ;
 unsigned long PLT_BASIC_EXCEPTION ;
 unsigned long PLT_BASIC_TELEPHONY ;

 int hid_dbg (struct hid_device*,char*,int,unsigned long,...) ;
 scalar_t__ hid_get_drvdata (struct hid_device*) ;
 int hid_map_usage_clear (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,unsigned short) ;

__attribute__((used)) static int plantronics_input_mapping(struct hid_device *hdev,
         struct hid_input *hi,
         struct hid_field *field,
         struct hid_usage *usage,
         unsigned long **bit, int *max)
{
 unsigned short mapped_key;
 unsigned long plt_type = (unsigned long)hid_get_drvdata(hdev);


 if (field->application == HID_GD_JOYSTICK)
  goto defaulted;



 if (!(plt_type & HID_USAGE_PAGE)) {
  switch (plt_type) {
  case 128:
   if (PLT_ALLOW_CONSUMER)
    goto defaulted;
   goto ignored;
  default:
   if (PLT_ALLOW_CONSUMER)
    goto defaulted;
  }
 }


 else if ((plt_type & HID_USAGE) >= PLT_BASIC_TELEPHONY &&
   (plt_type & HID_USAGE) != PLT_BASIC_EXCEPTION) {
  if (PLT_ALLOW_CONSUMER)
   goto defaulted;
 }


 else if (!((field->application ^ plt_type) & HID_USAGE_PAGE)) {
  switch (usage->hid) {
  case 131:
  case 129:
   mapped_key = KEY_VOLUMEUP;
   goto mapped;
  case 132:
  case 130:
   mapped_key = KEY_VOLUMEDOWN;
   goto mapped;
  }
 }







ignored:
 return -1;

defaulted:
 hid_dbg(hdev, "usage: %08x (appl: %08x) - defaulted\n",
  usage->hid, field->application);
 return 0;

mapped:
 hid_map_usage_clear(hi, usage, bit, max, EV_KEY, mapped_key);
 hid_dbg(hdev, "usage: %08x (appl: %08x) - mapped to key %d\n",
  usage->hid, field->application, mapped_key);
 return 1;
}
