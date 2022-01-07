
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_dev {int propbit; int keybit; } ;
struct hid_input {TYPE_1__* report; struct input_dev* input; } ;
struct hid_device {int dummy; } ;
struct asus_drvdata {int quirks; scalar_t__ enable_backlight; struct input_dev* input; TYPE_2__* tp; } ;
struct TYPE_4__ {int contact_size; int max_contacts; int res_y; int res_x; int max_y; int max_x; } ;
struct TYPE_3__ {scalar_t__ id; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_TOOL_WIDTH ;
 int BTN_LEFT ;
 int INPUT_MT_POINTER ;
 int INPUT_PROP_BUTTONPAD ;
 int MAX_PRESSURE ;
 int MAX_TOUCH_MAJOR ;
 int QUIRK_T100CHI ;
 scalar_t__ T100CHI_MOUSE_REPORT_ID ;
 int __set_bit (int ,int ) ;
 scalar_t__ asus_kbd_register_leds (struct hid_device*) ;
 int asus_kbd_wmi_led_control_present (struct hid_device*) ;
 int hid_err (struct hid_device*,char*,int) ;
 struct asus_drvdata* hid_get_drvdata (struct hid_device*) ;
 int hid_warn (struct hid_device*,char*) ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_mt_init_slots (struct input_dev*,int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int asus_input_configured(struct hid_device *hdev, struct hid_input *hi)
{
 struct input_dev *input = hi->input;
 struct asus_drvdata *drvdata = hid_get_drvdata(hdev);


 if (drvdata->quirks & QUIRK_T100CHI &&
     hi->report->id != T100CHI_MOUSE_REPORT_ID)
  return 0;

 if (drvdata->tp) {
  int ret;

  input_set_abs_params(input, ABS_MT_POSITION_X, 0,
         drvdata->tp->max_x, 0, 0);
  input_set_abs_params(input, ABS_MT_POSITION_Y, 0,
         drvdata->tp->max_y, 0, 0);
  input_abs_set_res(input, ABS_MT_POSITION_X, drvdata->tp->res_x);
  input_abs_set_res(input, ABS_MT_POSITION_Y, drvdata->tp->res_y);

  if (drvdata->tp->contact_size >= 5) {
   input_set_abs_params(input, ABS_TOOL_WIDTH, 0,
          MAX_TOUCH_MAJOR, 0, 0);
   input_set_abs_params(input, ABS_MT_TOUCH_MAJOR, 0,
          MAX_TOUCH_MAJOR, 0, 0);
   input_set_abs_params(input, ABS_MT_PRESSURE, 0,
           MAX_PRESSURE, 0, 0);
  }

  __set_bit(BTN_LEFT, input->keybit);
  __set_bit(INPUT_PROP_BUTTONPAD, input->propbit);

  ret = input_mt_init_slots(input, drvdata->tp->max_contacts,
       INPUT_MT_POINTER);

  if (ret) {
   hid_err(hdev, "Asus input mt init slots failed: %d\n", ret);
   return ret;
  }
 }

 drvdata->input = input;

 if (drvdata->enable_backlight &&
     !asus_kbd_wmi_led_control_present(hdev) &&
     asus_kbd_register_leds(hdev))
  hid_warn(hdev, "Failed to initialize backlight.\n");

 return 0;
}
