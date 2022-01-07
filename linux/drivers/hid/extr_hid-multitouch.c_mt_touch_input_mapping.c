
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mt_class {int sn_move; int sn_width; int sn_height; int sn_pressure; int name; } ;
struct mt_device {int inputmode_value; struct mt_class mtclass; } ;
struct mt_application {int quirks; int scantime_logical_max; int have_contact_count; int * raw_cc; int * scantime; int touches_by_report; int buttons_count; int mt_flags; } ;
struct hid_usage {int hid; int usage_index; } ;
struct hid_input {TYPE_1__* input; } ;
struct hid_field {scalar_t__ application; int logical_maximum; int * value; struct hid_usage* usage; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {int absbit; int propbit; } ;


 int ABS_MT_DISTANCE ;
 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOOL_TYPE ;
 int ABS_MT_TOOL_X ;
 int ABS_MT_TOOL_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int BTN_0 ;
 int BTN_MOUSE ;
 int BTN_TOUCH ;
 int EV_KEY ;
 int EV_MSC ;
 scalar_t__ HID_DG_TOUCHPAD ;
 scalar_t__ HID_DG_TOUCHSCREEN ;

 scalar_t__ HID_GD_SYSTEM_MULTIAXIS ;





 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int INPUT_MT_POINTER ;
 int INPUT_PROP_DIRECT ;
 int MSC_TIMESTAMP ;
 int MT_CLS_WIN_8 ;
 int MT_CLS_WIN_8_DUAL ;
 int MT_INPUTMODE_TOUCHPAD ;
 int MT_QUIRK_CONFIDENCE ;
 int MT_QUIRK_HOVERING ;
 int MT_QUIRK_NO_AREA ;
 int MT_QUIRK_WIN8_PTP_BUTTONS ;
 int MT_STORE_FIELD (int ) ;
 int MT_TOOL_DIAL ;
 int MT_TOOL_FINGER ;
 int MT_TOOL_PALM ;
 int __set_bit (int ,int ) ;
 int a ;
 int confidence_state ;
 int contactid ;
 int cx ;
 int cy ;
 int h ;
 struct mt_device* hid_get_drvdata (struct hid_device*) ;
 int hid_map_usage (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,int) ;
 int input_set_abs_params (TYPE_1__*,int ,int,int,int,int ) ;
 int input_set_capability (TYPE_1__*,int ,int) ;
 int inrange_state ;
 int p ;
 int set_abs (TYPE_1__*,int,struct hid_field*,int) ;
 int test_bit (int ,int ) ;
 int tip_state ;
 int w ;
 int x ;
 int y ;

__attribute__((used)) static int mt_touch_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max, struct mt_application *app)
{
 struct mt_device *td = hid_get_drvdata(hdev);
 struct mt_class *cls = &td->mtclass;
 int code;
 struct hid_usage *prev_usage = ((void*)0);




 if (field->application == HID_DG_TOUCHSCREEN &&
     (usage->hid & HID_USAGE_PAGE) == 130) {
  app->mt_flags |= INPUT_MT_POINTER;
  td->inputmode_value = MT_INPUTMODE_TOUCHPAD;
 }


 if ((usage->hid & HID_USAGE_PAGE) == 130)
  app->buttons_count++;

 if (usage->usage_index)
  prev_usage = &field->usage[usage->usage_index - 1];

 switch (usage->hid & HID_USAGE_PAGE) {

 case 128:
  switch (usage->hid) {
  case 132:
   if (prev_usage && (prev_usage->hid == usage->hid)) {
    code = ABS_MT_TOOL_X;
    MT_STORE_FIELD(cx);
   } else {
    code = ABS_MT_POSITION_X;
    MT_STORE_FIELD(x);
   }

   set_abs(hi->input, code, field, cls->sn_move);





   if (field->application == HID_GD_SYSTEM_MULTIAXIS) {
    __set_bit(INPUT_PROP_DIRECT,
       hi->input->propbit);
    input_set_abs_params(hi->input,
           ABS_MT_TOOL_TYPE,
           MT_TOOL_DIAL,
           MT_TOOL_DIAL, 0, 0);
   }

   return 1;
  case 131:
   if (prev_usage && (prev_usage->hid == usage->hid)) {
    code = ABS_MT_TOOL_Y;
    MT_STORE_FIELD(cy);
   } else {
    code = ABS_MT_POSITION_Y;
    MT_STORE_FIELD(y);
   }

   set_abs(hi->input, code, field, cls->sn_move);

   return 1;
  }
  return 0;

 case 129:
  switch (usage->hid) {
  case 138:
   if (app->quirks & MT_QUIRK_HOVERING) {
    input_set_abs_params(hi->input,
     ABS_MT_DISTANCE, 0, 1, 0, 0);
   }
   MT_STORE_FIELD(inrange_state);
   return 1;
  case 143:
   if ((cls->name == MT_CLS_WIN_8 ||
    cls->name == MT_CLS_WIN_8_DUAL) &&
    (field->application == HID_DG_TOUCHPAD ||
     field->application == HID_DG_TOUCHSCREEN))
    app->quirks |= MT_QUIRK_CONFIDENCE;

   if (app->quirks & MT_QUIRK_CONFIDENCE)
    input_set_abs_params(hi->input,
           ABS_MT_TOOL_TYPE,
           MT_TOOL_FINGER,
           MT_TOOL_PALM, 0, 0);

   MT_STORE_FIELD(confidence_state);
   return 1;
  case 135:
   if (field->application != HID_GD_SYSTEM_MULTIAXIS)
    input_set_capability(hi->input,
           EV_KEY, BTN_TOUCH);
   MT_STORE_FIELD(tip_state);
   return 1;
  case 141:
   MT_STORE_FIELD(contactid);
   app->touches_by_report++;
   return 1;
  case 133:
   if (!(app->quirks & MT_QUIRK_NO_AREA))
    set_abs(hi->input, ABS_MT_TOUCH_MAJOR, field,
     cls->sn_width);
   MT_STORE_FIELD(w);
   return 1;
  case 139:
   if (!(app->quirks & MT_QUIRK_NO_AREA)) {
    set_abs(hi->input, ABS_MT_TOUCH_MINOR, field,
     cls->sn_height);





    if (!test_bit(ABS_MT_ORIENTATION,
      hi->input->absbit))
     input_set_abs_params(hi->input,
      ABS_MT_ORIENTATION, 0, 1, 0, 0);
   }
   MT_STORE_FIELD(h);
   return 1;
  case 136:
   set_abs(hi->input, ABS_MT_PRESSURE, field,
    cls->sn_pressure);
   MT_STORE_FIELD(p);
   return 1;
  case 137:
   input_set_capability(hi->input, EV_MSC, MSC_TIMESTAMP);
   app->scantime = &field->value[usage->usage_index];
   app->scantime_logical_max = field->logical_maximum;
   return 1;
  case 142:
   app->have_contact_count = 1;
   app->raw_cc = &field->value[usage->usage_index];
   return 1;
  case 144:





   input_set_abs_params(hi->input, ABS_MT_ORIENTATION,
    -field->logical_maximum / 4,
    field->logical_maximum / 4,
    cls->sn_move ?
    field->logical_maximum / cls->sn_move : 0, 0);
   MT_STORE_FIELD(a);
   return 1;
  case 140:

   return -1;
  case 134:


   return -1;
  }

  return 0;

 case 130:
  code = BTN_MOUSE + ((usage->hid - 1) & HID_USAGE);




  if ((app->quirks & MT_QUIRK_WIN8_PTP_BUTTONS) &&
      field->application == HID_DG_TOUCHPAD &&
      (usage->hid & HID_USAGE) > 1)
   code--;

  if (field->application == HID_GD_SYSTEM_MULTIAXIS)
   code = BTN_0 + ((usage->hid - 1) & HID_USAGE);

  hid_map_usage(hi, usage, bit, max, EV_KEY, code);
  input_set_capability(hi->input, EV_KEY, code);
  return 1;

 case 0xff000000:

  return -1;
 }

 return 0;
}
