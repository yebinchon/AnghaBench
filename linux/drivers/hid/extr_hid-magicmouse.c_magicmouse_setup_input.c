
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ product; } ;
struct input_dev {char* name; int mscbit; int evbit; TYPE_1__ id; int propbit; int keybit; int relbit; } ;
struct hid_device {int dummy; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_0 ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_MOUSE ;
 int BTN_RIGHT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_QUADTAP ;
 int BTN_TOOL_QUINTTAP ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_MSC ;
 int EV_REL ;
 int INPUT_MT_DROP_UNUSED ;
 int INPUT_MT_POINTER ;
 int INPUT_MT_TRACK ;
 int INPUT_PROP_BUTTONPAD ;
 int INPUT_PROP_POINTER ;
 int MOUSE_MAX_X ;
 int MOUSE_MAX_Y ;
 int MOUSE_MIN_X ;
 int MOUSE_MIN_Y ;
 int MOUSE_RES_X ;
 int MOUSE_RES_Y ;
 int MSC_RAW ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int TRACKPAD2_MAX_X ;
 int TRACKPAD2_MAX_Y ;
 int TRACKPAD2_MIN_X ;
 int TRACKPAD2_MIN_Y ;
 int TRACKPAD2_RES_X ;
 int TRACKPAD2_RES_Y ;
 int TRACKPAD_MAX_X ;
 int TRACKPAD_MAX_Y ;
 int TRACKPAD_MIN_X ;
 int TRACKPAD_MIN_Y ;
 int TRACKPAD_RES_X ;
 int TRACKPAD_RES_Y ;
 scalar_t__ USB_DEVICE_ID_APPLE_MAGICMOUSE ;
 scalar_t__ USB_DEVICE_ID_APPLE_MAGICTRACKPAD2 ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 scalar_t__ emulate_3button ;
 scalar_t__ emulate_scroll_wheel ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_mt_init_slots (struct input_dev*,int,int) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int,int ) ;
 int input_set_events_per_packet (struct input_dev*,int) ;
 scalar_t__ report_undeciphered ;

__attribute__((used)) static int magicmouse_setup_input(struct input_dev *input, struct hid_device *hdev)
{
 int error;
 int mt_flags = 0;

 __set_bit(EV_KEY, input->evbit);

 if (input->id.product == USB_DEVICE_ID_APPLE_MAGICMOUSE) {
  __set_bit(BTN_LEFT, input->keybit);
  __set_bit(BTN_RIGHT, input->keybit);
  if (emulate_3button)
   __set_bit(BTN_MIDDLE, input->keybit);

  __set_bit(EV_REL, input->evbit);
  __set_bit(REL_X, input->relbit);
  __set_bit(REL_Y, input->relbit);
  if (emulate_scroll_wheel) {
   __set_bit(REL_WHEEL, input->relbit);
   __set_bit(REL_HWHEEL, input->relbit);
  }
 } else if (input->id.product == USB_DEVICE_ID_APPLE_MAGICTRACKPAD2) {



  input->name = "Apple Inc. Magic Trackpad 2";

  __clear_bit(EV_MSC, input->evbit);
  __clear_bit(BTN_0, input->keybit);
  __clear_bit(BTN_RIGHT, input->keybit);
  __clear_bit(BTN_MIDDLE, input->keybit);
  __set_bit(BTN_MOUSE, input->keybit);
  __set_bit(INPUT_PROP_BUTTONPAD, input->propbit);
  __set_bit(BTN_TOOL_FINGER, input->keybit);

  mt_flags = INPUT_MT_POINTER | INPUT_MT_DROP_UNUSED |
    INPUT_MT_TRACK;
 } else {





  __clear_bit(BTN_RIGHT, input->keybit);
  __clear_bit(BTN_MIDDLE, input->keybit);
  __set_bit(BTN_MOUSE, input->keybit);
  __set_bit(BTN_TOOL_FINGER, input->keybit);
  __set_bit(BTN_TOOL_DOUBLETAP, input->keybit);
  __set_bit(BTN_TOOL_TRIPLETAP, input->keybit);
  __set_bit(BTN_TOOL_QUADTAP, input->keybit);
  __set_bit(BTN_TOOL_QUINTTAP, input->keybit);
  __set_bit(BTN_TOUCH, input->keybit);
  __set_bit(INPUT_PROP_POINTER, input->propbit);
  __set_bit(INPUT_PROP_BUTTONPAD, input->propbit);
 }


 __set_bit(EV_ABS, input->evbit);

 error = input_mt_init_slots(input, 16, mt_flags);
 if (error)
  return error;
 input_set_abs_params(input, ABS_MT_TOUCH_MAJOR, 0, 255 << 2,
        4, 0);
 input_set_abs_params(input, ABS_MT_TOUCH_MINOR, 0, 255 << 2,
        4, 0);







 if (input->id.product == USB_DEVICE_ID_APPLE_MAGICMOUSE) {
  input_set_abs_params(input, ABS_MT_ORIENTATION, -31, 32, 1, 0);
  input_set_abs_params(input, ABS_MT_POSITION_X,
         MOUSE_MIN_X, MOUSE_MAX_X, 4, 0);
  input_set_abs_params(input, ABS_MT_POSITION_Y,
         MOUSE_MIN_Y, MOUSE_MAX_Y, 4, 0);

  input_abs_set_res(input, ABS_MT_POSITION_X,
      MOUSE_RES_X);
  input_abs_set_res(input, ABS_MT_POSITION_Y,
      MOUSE_RES_Y);
 } else if (input->id.product == USB_DEVICE_ID_APPLE_MAGICTRACKPAD2) {
  input_set_abs_params(input, ABS_MT_PRESSURE, 0, 253, 0, 0);
  input_set_abs_params(input, ABS_PRESSURE, 0, 253, 0, 0);
  input_set_abs_params(input, ABS_MT_ORIENTATION, -3, 4, 0, 0);
  input_set_abs_params(input, ABS_X, TRACKPAD2_MIN_X,
         TRACKPAD2_MAX_X, 0, 0);
  input_set_abs_params(input, ABS_Y, TRACKPAD2_MIN_Y,
         TRACKPAD2_MAX_Y, 0, 0);
  input_set_abs_params(input, ABS_MT_POSITION_X,
         TRACKPAD2_MIN_X, TRACKPAD2_MAX_X, 0, 0);
  input_set_abs_params(input, ABS_MT_POSITION_Y,
         TRACKPAD2_MIN_Y, TRACKPAD2_MAX_Y, 0, 0);

  input_abs_set_res(input, ABS_X, TRACKPAD2_RES_X);
  input_abs_set_res(input, ABS_Y, TRACKPAD2_RES_Y);
  input_abs_set_res(input, ABS_MT_POSITION_X, TRACKPAD2_RES_X);
  input_abs_set_res(input, ABS_MT_POSITION_Y, TRACKPAD2_RES_Y);
 } else {
  input_set_abs_params(input, ABS_MT_ORIENTATION, -31, 32, 1, 0);
  input_set_abs_params(input, ABS_X, TRACKPAD_MIN_X,
         TRACKPAD_MAX_X, 4, 0);
  input_set_abs_params(input, ABS_Y, TRACKPAD_MIN_Y,
         TRACKPAD_MAX_Y, 4, 0);
  input_set_abs_params(input, ABS_MT_POSITION_X,
         TRACKPAD_MIN_X, TRACKPAD_MAX_X, 4, 0);
  input_set_abs_params(input, ABS_MT_POSITION_Y,
         TRACKPAD_MIN_Y, TRACKPAD_MAX_Y, 4, 0);

  input_abs_set_res(input, ABS_X, TRACKPAD_RES_X);
  input_abs_set_res(input, ABS_Y, TRACKPAD_RES_Y);
  input_abs_set_res(input, ABS_MT_POSITION_X,
      TRACKPAD_RES_X);
  input_abs_set_res(input, ABS_MT_POSITION_Y,
      TRACKPAD_RES_Y);
 }

 input_set_events_per_packet(input, 60);

 if (report_undeciphered &&
     input->id.product != USB_DEVICE_ID_APPLE_MAGICTRACKPAD2) {
  __set_bit(EV_MSC, input->evbit);
  __set_bit(MSC_RAW, input->mscbit);
 }

 return 0;
}
