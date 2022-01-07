
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int touch_max; } ;
struct wacom_wac {TYPE_1__ features; int touch_input; scalar_t__ is_direct_mode; scalar_t__ has_mode_change; } ;
struct wacom_features {scalar_t__ type; int device_type; int touch_max; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_device {int dummy; } ;


 scalar_t__ HID_GENERIC ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_POINTER ;
 int WACOM_DEVICETYPE_DIRECT ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int input_mt_init_slots (int ,int ,int ) ;

__attribute__((used)) static void wacom_post_parse_hid(struct hid_device *hdev,
     struct wacom_features *features)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;

 if (features->type == HID_GENERIC) {

  if (wacom_wac->has_mode_change) {
   if (wacom_wac->is_direct_mode)
    features->device_type |= WACOM_DEVICETYPE_DIRECT;
   else
    features->device_type &= ~WACOM_DEVICETYPE_DIRECT;
  }

  if (features->touch_max > 1) {
   if (features->device_type & WACOM_DEVICETYPE_DIRECT)
    input_mt_init_slots(wacom_wac->touch_input,
          wacom_wac->features.touch_max,
          INPUT_MT_DIRECT);
   else
    input_mt_init_slots(wacom_wac->touch_input,
          wacom_wac->features.touch_max,
          INPUT_MT_POINTER);
  }
 }
}
