
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int llv; int max_llv; int hlv; int max_hlv; int img_lum; } ;
struct TYPE_4__ {int device_type; int type; } ;
struct TYPE_5__ {TYPE_1__ features; } ;
struct wacom {int hdev; TYPE_3__ led; int generic_has_leds; TYPE_2__ wacom_wac; } ;
 int WACOM_DEVICETYPE_PAD ;
 int cintiq_led_attr_group ;
 int generic_led_attr_group ;
 int hid_err (int ,char*,int) ;
 int intuos4_led_attr_group ;
 int intuos5_led_attr_group ;
 int wacom_devm_sysfs_create_group (struct wacom*,int *) ;
 int wacom_led_groups_allocate (struct wacom*,int) ;
 int wacom_leds_alloc_and_register (struct wacom*,int,int,int) ;

int wacom_initialize_leds(struct wacom *wacom)
{
 int error;

 if (!(wacom->wacom_wac.features.device_type & WACOM_DEVICETYPE_PAD))
  return 0;


 switch (wacom->wacom_wac.features.type) {
 case 142:
  if (!wacom->generic_has_leds)
   return 0;
  wacom->led.llv = 100;
  wacom->led.max_llv = 100;

  error = wacom_leds_alloc_and_register(wacom, 1, 4, 0);
  if (error) {
   hid_err(wacom->hdev,
    "cannot create leds err: %d\n", error);
   return error;
  }

  error = wacom_devm_sysfs_create_group(wacom,
            &generic_led_attr_group);
  break;

 case 139:
 case 141:
 case 138:
 case 140:
  wacom->led.llv = 10;
  wacom->led.hlv = 20;
  wacom->led.max_llv = 127;
  wacom->led.max_hlv = 127;
  wacom->led.img_lum = 10;

  error = wacom_leds_alloc_and_register(wacom, 1, 4, 0);
  if (error) {
   hid_err(wacom->hdev,
    "cannot create leds err: %d\n", error);
   return error;
  }

  error = wacom_devm_sysfs_create_group(wacom,
            &intuos4_led_attr_group);
  break;

 case 128:
 case 129:
  wacom->led.llv = 0;
  wacom->led.hlv = 0;
  wacom->led.img_lum = 0;

  error = wacom_leds_alloc_and_register(wacom, 2, 4, 0);
  if (error) {
   hid_err(wacom->hdev,
    "cannot create leds err: %d\n", error);
   return error;
  }

  error = wacom_devm_sysfs_create_group(wacom,
            &cintiq_led_attr_group);
  break;

 case 135:
 case 137:
 case 136:
 case 131:
 case 132:
 case 133:
  wacom->led.llv = 32;
  wacom->led.max_llv = 96;

  error = wacom_leds_alloc_and_register(wacom, 1, 4, 0);
  if (error) {
   hid_err(wacom->hdev,
    "cannot create leds err: %d\n", error);
   return error;
  }

  error = wacom_devm_sysfs_create_group(wacom,
            &intuos5_led_attr_group);
  break;

 case 134:
  wacom->led.llv = 50;
  wacom->led.max_llv = 100;
  error = wacom_leds_alloc_and_register(wacom, 1, 4, 0);
  if (error) {
   hid_err(wacom->hdev,
    "cannot create leds err: %d\n", error);
   return error;
  }
  return 0;

 case 130:
  wacom->led.llv = 255;
  wacom->led.max_llv = 255;
  error = wacom_led_groups_allocate(wacom, 5);
  if (error) {
   hid_err(wacom->hdev,
    "cannot create leds err: %d\n", error);
   return error;
  }
  return 0;

 default:
  return 0;
 }

 if (error) {
  hid_err(wacom->hdev,
   "cannot create sysfs group err: %d\n", error);
  return error;
 }

 return 0;
}
