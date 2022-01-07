
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;



 int HID_USAGE_PAGE ;

__attribute__((used)) static int speedlink_input_mapping(struct hid_device *hdev,
  struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{






 switch (usage->hid & HID_USAGE_PAGE) {
 case 128:
  return -1;
 }
 return 0;
}
