
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {scalar_t__ hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int EV_REL ;
 scalar_t__ HID_GD_Z ;
 int REL_HWHEEL ;
 int hid_map_usage (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,int ) ;

__attribute__((used)) static int lenovo_input_mapping_scrollpoint(struct hid_device *hdev,
  struct hid_input *hi, struct hid_field *field,
  struct hid_usage *usage, unsigned long **bit, int *max)
{
 if (usage->hid == HID_GD_Z) {
  hid_map_usage(hi, usage, bit, max, EV_REL, REL_HWHEEL);
  return 1;
 }
 return 0;
}
