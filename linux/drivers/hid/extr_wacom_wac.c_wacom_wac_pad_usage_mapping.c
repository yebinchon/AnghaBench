
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {int device_type; int numbered_buttons; } ;
struct wacom_wac {int has_mute_touch_switch; int has_mode_change; int is_direct_mode; struct input_dev* pad_input; struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct input_dev {int evbit; int propbit; } ;
struct hid_usage {int code; int type; int hid; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int ABS_RX ;
 int ABS_RY ;
 int ABS_WHEEL ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_SW ;
 int INPUT_PROP_ACCELEROMETER ;
 int KEY_BUTTONCONFIG ;
 int KEY_CONTROLPANEL ;
 int KEY_ONSCREEN_KEYBOARD ;
 int SW_MUTE_DEVICE ;
 int WACOM_DEVICETYPE_PAD ;
 int __set_bit (int ,int ) ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int set_bit (int ,int ) ;
 unsigned int wacom_equivalent_usage (int ) ;
 int wacom_map_usage (struct input_dev*,struct hid_usage*,struct hid_field*,int ,int ,int ) ;
 int wacom_numbered_button_to_key (int ) ;

__attribute__((used)) static void wacom_wac_pad_usage_mapping(struct hid_device *hdev,
  struct hid_field *field, struct hid_usage *usage)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct wacom_features *features = &wacom_wac->features;
 struct input_dev *input = wacom_wac->pad_input;
 unsigned equivalent_usage = wacom_equivalent_usage(usage->hid);

 switch (equivalent_usage) {
 case 147:
  __set_bit(INPUT_PROP_ACCELEROMETER, input->propbit);
  wacom_map_usage(input, usage, field, EV_ABS, ABS_X, 0);
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 146:
  __set_bit(INPUT_PROP_ACCELEROMETER, input->propbit);
  wacom_map_usage(input, usage, field, EV_ABS, ABS_Y, 0);
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 145:
  __set_bit(INPUT_PROP_ACCELEROMETER, input->propbit);
  wacom_map_usage(input, usage, field, EV_ABS, ABS_Z, 0);
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 144:
 case 141:
 case 138:
 case 142:
 case 140:
 case 139:
  wacom_map_usage(input, usage, field, EV_KEY,
    wacom_numbered_button_to_key(features->numbered_buttons),
    0);
  features->numbered_buttons++;
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 132:
 case 134:
  wacom_wac->has_mute_touch_switch = 1;
  usage->type = EV_SW;
  usage->code = SW_MUTE_DEVICE;
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 129:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_RX, 0);
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 128:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_RY, 0);
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 131:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_WHEEL, 0);
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 130:




  usage->type = EV_ABS;
  usage->code = ABS_WHEEL;
  set_bit(EV_ABS, input->evbit);
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 143:
  wacom_map_usage(input, usage, field, EV_KEY, KEY_BUTTONCONFIG, 0);
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 133:
  wacom_map_usage(input, usage, field, EV_KEY, KEY_ONSCREEN_KEYBOARD, 0);
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 137:
  wacom_map_usage(input, usage, field, EV_KEY, KEY_CONTROLPANEL, 0);
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 case 135:

  if (!wacom_wac->has_mode_change) {
   wacom_wac->has_mode_change = 1;
   wacom_wac->is_direct_mode = 1;
  }
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 }

 switch (equivalent_usage & 0xfffffff0) {
 case 136:
  wacom_map_usage(input, usage, field, EV_KEY,
    wacom_numbered_button_to_key(features->numbered_buttons),
    0);
  features->numbered_buttons++;
  features->device_type |= WACOM_DEVICETYPE_PAD;
  break;
 }
}
