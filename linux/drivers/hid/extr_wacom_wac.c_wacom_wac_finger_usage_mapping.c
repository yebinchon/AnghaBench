
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cc_value_index; int cc_index; int cc_report; } ;
struct TYPE_4__ {unsigned int touch_max; } ;
struct wacom_wac {TYPE_3__ hid_data; TYPE_1__ features; struct input_dev* touch_input; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct input_dev {int dummy; } ;
struct hid_usage {int usage_index; int hid; } ;
struct hid_field {unsigned int logical_maximum; unsigned int logical_minimum; int index; TYPE_2__* report; } ;
struct hid_device {int dummy; } ;
struct TYPE_5__ {int id; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int EV_ABS ;
 int EV_KEY ;







 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 unsigned int wacom_equivalent_usage (int ) ;
 int wacom_map_usage (struct input_dev*,struct hid_usage*,struct hid_field*,int ,int ,int) ;

__attribute__((used)) static void wacom_wac_finger_usage_mapping(struct hid_device *hdev,
  struct hid_field *field, struct hid_usage *usage)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct input_dev *input = wacom_wac->touch_input;
 unsigned touch_max = wacom_wac->features.touch_max;
 unsigned equivalent_usage = wacom_equivalent_usage(usage->hid);

 switch (equivalent_usage) {
 case 129:
  if (touch_max == 1)
   wacom_map_usage(input, usage, field, EV_ABS, ABS_X, 4);
  else
   wacom_map_usage(input, usage, field, EV_ABS,
     ABS_MT_POSITION_X, 4);
  break;
 case 128:
  if (touch_max == 1)
   wacom_map_usage(input, usage, field, EV_ABS, ABS_Y, 4);
  else
   wacom_map_usage(input, usage, field, EV_ABS,
     ABS_MT_POSITION_Y, 4);
  break;
 case 130:
 case 132:
  wacom_map_usage(input, usage, field, EV_ABS, ABS_MT_TOUCH_MAJOR, 0);
  wacom_map_usage(input, usage, field, EV_ABS, ABS_MT_TOUCH_MINOR, 0);
  input_set_abs_params(input, ABS_MT_ORIENTATION, 0, 1, 0, 0);
  break;
 case 131:
  wacom_map_usage(input, usage, field, EV_KEY, BTN_TOUCH, 0);
  break;
 case 134:
  wacom_wac->hid_data.cc_report = field->report->id;
  wacom_wac->hid_data.cc_index = field->index;
  wacom_wac->hid_data.cc_value_index = usage->usage_index;
  break;
 case 133:
  if ((field->logical_maximum - field->logical_minimum) < touch_max) {





   field->logical_maximum = 255;
  }
  break;
 }
}
