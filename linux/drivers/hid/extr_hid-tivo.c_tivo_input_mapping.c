
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;




 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_ENTER ;
 int KEY_INFO ;
 int KEY_KPMINUS ;
 int KEY_KPPLUS ;
 int KEY_MEDIA ;
 int KEY_TV ;
 int tivo_map_key_clear (int ) ;

__attribute__((used)) static int tivo_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 switch (usage->hid & HID_USAGE_PAGE) {
 case 128:
  switch (usage->hid & HID_USAGE) {

  case 0x3d: tivo_map_key_clear(KEY_MEDIA); break;

  case 0x3e: tivo_map_key_clear(KEY_TV); break;

  case 0x41: tivo_map_key_clear(KEY_KPMINUS); break;

  case 0x42: tivo_map_key_clear(KEY_KPPLUS); break;
  default:
   return 0;
  }
  break;
 case 129:
  switch (usage->hid & HID_USAGE) {

  case 0x083: tivo_map_key_clear(KEY_ENTER); break;

  case 0x209: tivo_map_key_clear(KEY_INFO); break;
  default:
   return 0;
  }
  break;
 default:
  return 0;
 }



 return 1;
}
