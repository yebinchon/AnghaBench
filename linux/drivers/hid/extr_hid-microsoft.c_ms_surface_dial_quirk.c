
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;







 int HID_USAGE_PAGE ;

__attribute__((used)) static int ms_surface_dial_quirk(struct hid_input *hi, struct hid_field *field,
  struct hid_usage *usage, unsigned long **bit, int *max)
{
 switch (usage->hid & HID_USAGE_PAGE) {
 case 0xff070000:

 case 129:

  return -1;
 case 128:
  switch (usage->hid) {
  case 131:

  case 130:

  case 132:

   return -1;
  }
 }

 return 0;
}
