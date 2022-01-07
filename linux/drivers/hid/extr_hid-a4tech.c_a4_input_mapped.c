
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {scalar_t__ type; scalar_t__ code; int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
struct a4tech_sc {int quirks; } ;


 int A4_2WHEEL_MOUSE_HACK_7 ;
 scalar_t__ EV_REL ;
 int REL_HWHEEL ;
 int REL_HWHEEL_HI_RES ;
 scalar_t__ REL_WHEEL_HI_RES ;
 struct a4tech_sc* hid_get_drvdata (struct hid_device*) ;
 int set_bit (int ,unsigned long*) ;

__attribute__((used)) static int a4_input_mapped(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 struct a4tech_sc *a4 = hid_get_drvdata(hdev);

 if (usage->type == EV_REL && usage->code == REL_WHEEL_HI_RES) {
  set_bit(REL_HWHEEL, *bit);
  set_bit(REL_HWHEEL_HI_RES, *bit);
 }

 if ((a4->quirks & A4_2WHEEL_MOUSE_HACK_7) && usage->hid == 0x00090007)
  return -1;

 return 0;
}
