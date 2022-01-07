
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_usage {int hid; } ;
struct hid_input {TYPE_1__* input; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int evbit; } ;


 int EV_KEY ;
 int EV_REP ;
 int HID_UP_CUSTOM ;
 int HID_UP_MSVENDOR ;
 int KEY_FN ;
 int apple_setup_input (TYPE_1__*) ;
 int hid_map_usage_clear (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int apple_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 if (usage->hid == (HID_UP_CUSTOM | 0x0003) ||
   usage->hid == (HID_UP_MSVENDOR | 0x0003)) {

  set_bit(EV_REP, hi->input->evbit);
  hid_map_usage_clear(hi, usage, bit, max, EV_KEY, KEY_FN);
  apple_setup_input(hi->input);
  return 1;
 }


 return 0;
}
