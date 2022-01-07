
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int HID_UP_BUTTON ;
 int KEY_MICMUTE ;
 int hid_set_drvdata (struct hid_device*,void*) ;
 int map_key_clear (int ) ;

__attribute__((used)) static int lenovo_input_mapping_tpkbd(struct hid_device *hdev,
  struct hid_input *hi, struct hid_field *field,
  struct hid_usage *usage, unsigned long **bit, int *max)
{
 if (usage->hid == (HID_UP_BUTTON | 0x0010)) {

  hid_set_drvdata(hdev, (void *)1);
  map_key_clear(KEY_MICMUTE);
  return 1;
 }
 return 0;
}
