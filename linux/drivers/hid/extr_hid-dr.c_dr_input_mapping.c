
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int flags; } ;
struct hid_device {int dummy; } ;
 int HID_MAIN_ITEM_RELATIVE ;
 int map_abs (int) ;
 int map_rel (int) ;

__attribute__((used)) static int dr_input_mapping(struct hid_device *hdev, struct hid_input *hi,
       struct hid_field *field, struct hid_usage *usage,
       unsigned long **bit, int *max)
{
 switch (usage->hid) {




 case 130: case 129: case 128:
 case 133: case 132: case 131:
  if (field->flags & HID_MAIN_ITEM_RELATIVE)
   map_rel(usage->hid & 0xf);
  else
   map_abs(usage->hid & 0xf);
  return 1;
 }

 return 0;
}
