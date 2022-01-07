
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {int quirks; int device_type; } ;
struct wacom_wac {struct input_dev* pen_input; struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct input_dev {int evbit; } ;
struct hid_usage {int hid; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int ABS_DISTANCE ;
 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_TILT_X ;
 int ABS_TILT_Y ;
 int ABS_WHEEL ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_AIRBRUSH ;
 int BTN_TOOL_BRUSH ;
 int BTN_TOOL_LENS ;
 int BTN_TOOL_MOUSE ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_PENCIL ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_MSC ;
 int MSC_SERIAL ;
 int WACOM_DEVICETYPE_DIRECT ;




 int WACOM_QUIRK_AESPEN ;
 int WACOM_QUIRK_SENSE ;
 int WACOM_QUIRK_TOOLSERIAL ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int set_bit (int ,int ) ;
 unsigned int wacom_equivalent_usage (int ) ;
 int wacom_map_usage (struct input_dev*,struct hid_usage*,struct hid_field*,int ,int ,int) ;

__attribute__((used)) static void wacom_wac_pen_usage_mapping(struct hid_device *hdev,
  struct hid_field *field, struct hid_usage *usage)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct wacom_features *features = &wacom_wac->features;
 struct input_dev *input = wacom_wac->pen_input;
 unsigned equivalent_usage = wacom_equivalent_usage(usage->hid);

 switch (equivalent_usage) {
 case 134:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_X, 4);
  break;
 case 133:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_Y, 4);
  break;
 case 131:
 case 132:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_DISTANCE, 0);
  break;
 case 138:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_PRESSURE, 0);
  break;
 case 142:
  wacom_map_usage(input, usage, field, EV_KEY, BTN_TOOL_PEN, 0);
  break;
 case 141:
  wacom_map_usage(input, usage, field, EV_KEY,
    BTN_TOOL_RUBBER, 0);
  break;
 case 140:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_TILT_X, 0);
  break;
 case 139:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_TILT_Y, 0);
  break;
 case 135:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_Z, 0);
  break;
 case 143:
 case 137:
  wacom_map_usage(input, usage, field, EV_KEY, BTN_TOUCH, 0);
  break;
 case 145:
  wacom_map_usage(input, usage, field, EV_KEY, BTN_STYLUS, 0);
  break;
 case 144:
  wacom_map_usage(input, usage, field, EV_KEY, BTN_STYLUS2, 0);
  break;
 case 136:
  features->quirks |= WACOM_QUIRK_TOOLSERIAL;
  wacom_map_usage(input, usage, field, EV_MSC, MSC_SERIAL, 0);
  break;
 case 129:
  features->quirks |= WACOM_QUIRK_SENSE;
  wacom_map_usage(input, usage, field, EV_KEY, BTN_TOOL_PEN, 0);
  break;
 case 128:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_MISC, 0);

  if (!(features->quirks & WACOM_QUIRK_AESPEN)) {
   set_bit(EV_KEY, input->evbit);
   input_set_capability(input, EV_KEY, BTN_TOOL_PEN);
   input_set_capability(input, EV_KEY, BTN_TOOL_RUBBER);
   input_set_capability(input, EV_KEY, BTN_TOOL_BRUSH);
   input_set_capability(input, EV_KEY, BTN_TOOL_PENCIL);
   input_set_capability(input, EV_KEY, BTN_TOOL_AIRBRUSH);
   if (!(features->device_type & WACOM_DEVICETYPE_DIRECT)) {
    input_set_capability(input, EV_KEY, BTN_TOOL_MOUSE);
    input_set_capability(input, EV_KEY, BTN_TOOL_LENS);
   }
  }
  break;
 case 130:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_WHEEL, 0);
  break;
 }
}
