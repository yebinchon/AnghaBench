
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct udraw {int last_one_finger_x; int last_one_finger_y; int last_two_finger_x; int last_two_finger_y; int accel_input_dev; int pen_input_dev; int touch_input_dev; int joy_input_dev; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int AXIS_X ;
 int AXIS_Y ;
 int AXIS_Z ;
 int BTN_EAST ;
 int BTN_MODE ;
 int BTN_NORTH ;
 int BTN_SELECT ;
 int BTN_SOUTH ;
 int BTN_START ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_PEN ;
 int BTN_TOUCH ;
 int BTN_WEST ;
 int MAX_PRESSURE ;
 scalar_t__ PRESSURE_OFFSET ;
 int TOUCH_FINGER ;
 int TOUCH_NONE ;
 int TOUCH_PEN ;
 int TOUCH_TWOFINGER ;
 int clamp (scalar_t__,int ,int ) ;
 int clamp_accel (int,int ) ;
 struct udraw* hid_get_drvdata (struct hid_device*) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static int udraw_raw_event(struct hid_device *hdev, struct hid_report *report,
  u8 *data, int len)
{
 struct udraw *udraw = hid_get_drvdata(hdev);
 int touch;
 int x, y, z;

 if (len != 27)
  return 0;

 if (data[11] == 0x00)
  touch = TOUCH_NONE;
 else if (data[11] == 0x40)
  touch = TOUCH_PEN;
 else if (data[11] == 0x80)
  touch = TOUCH_FINGER;
 else
  touch = TOUCH_TWOFINGER;


 input_report_key(udraw->joy_input_dev, BTN_WEST, data[0] & 1);
 input_report_key(udraw->joy_input_dev, BTN_SOUTH, !!(data[0] & 2));
 input_report_key(udraw->joy_input_dev, BTN_EAST, !!(data[0] & 4));
 input_report_key(udraw->joy_input_dev, BTN_NORTH, !!(data[0] & 8));

 input_report_key(udraw->joy_input_dev, BTN_SELECT, !!(data[1] & 1));
 input_report_key(udraw->joy_input_dev, BTN_START, !!(data[1] & 2));
 input_report_key(udraw->joy_input_dev, BTN_MODE, !!(data[1] & 16));

 x = y = 0;
 switch (data[2]) {
 case 0x0:
  y = -127;
  break;
 case 0x1:
  y = -127;
  x = 127;
  break;
 case 0x2:
  x = 127;
  break;
 case 0x3:
  y = 127;
  x = 127;
  break;
 case 0x4:
  y = 127;
  break;
 case 0x5:
  y = 127;
  x = -127;
  break;
 case 0x6:
  x = -127;
  break;
 case 0x7:
  y = -127;
  x = -127;
  break;
 default:
  break;
 }

 input_report_abs(udraw->joy_input_dev, ABS_X, x);
 input_report_abs(udraw->joy_input_dev, ABS_Y, y);

 input_sync(udraw->joy_input_dev);


 x = y = 0;
 if (touch != TOUCH_NONE) {
  if (data[15] != 0x0F)
   x = data[15] * 256 + data[17];
  if (data[16] != 0x0F)
   y = data[16] * 256 + data[18];
 }

 if (touch == TOUCH_FINGER) {

  udraw->last_one_finger_x = x;
  udraw->last_one_finger_y = y;
  udraw->last_two_finger_x = -1;
  udraw->last_two_finger_y = -1;
 } else if (touch == TOUCH_TWOFINGER) {
  if (udraw->last_two_finger_x == -1) {

   udraw->last_two_finger_x = x;
   udraw->last_two_finger_y = y;

   x = udraw->last_one_finger_x;
   y = udraw->last_one_finger_y;
  } else {




   x = x - (udraw->last_two_finger_x
    - udraw->last_one_finger_x);
   y = y - (udraw->last_two_finger_y
    - udraw->last_one_finger_y);
  }
 }


 if (touch == TOUCH_FINGER || touch == TOUCH_TWOFINGER) {
  input_report_key(udraw->touch_input_dev, BTN_TOUCH, 1);
  input_report_key(udraw->touch_input_dev, BTN_TOOL_FINGER,
    touch == TOUCH_FINGER);
  input_report_key(udraw->touch_input_dev, BTN_TOOL_DOUBLETAP,
    touch == TOUCH_TWOFINGER);

  input_report_abs(udraw->touch_input_dev, ABS_X, x);
  input_report_abs(udraw->touch_input_dev, ABS_Y, y);
 } else {
  input_report_key(udraw->touch_input_dev, BTN_TOUCH, 0);
  input_report_key(udraw->touch_input_dev, BTN_TOOL_FINGER, 0);
  input_report_key(udraw->touch_input_dev, BTN_TOOL_DOUBLETAP, 0);
 }
 input_sync(udraw->touch_input_dev);


 if (touch == TOUCH_PEN) {
  int level;

  level = clamp(data[13] - PRESSURE_OFFSET,
    0, MAX_PRESSURE);

  input_report_key(udraw->pen_input_dev, BTN_TOUCH, (level != 0));
  input_report_key(udraw->pen_input_dev, BTN_TOOL_PEN, 1);
  input_report_abs(udraw->pen_input_dev, ABS_PRESSURE, level);
  input_report_abs(udraw->pen_input_dev, ABS_X, x);
  input_report_abs(udraw->pen_input_dev, ABS_Y, y);
 } else {
  input_report_key(udraw->pen_input_dev, BTN_TOUCH, 0);
  input_report_key(udraw->pen_input_dev, BTN_TOOL_PEN, 0);
  input_report_abs(udraw->pen_input_dev, ABS_PRESSURE, 0);
 }
 input_sync(udraw->pen_input_dev);


 x = (data[19] + (data[20] << 8));
 x = clamp_accel(x, AXIS_X);
 y = (data[21] + (data[22] << 8));
 y = clamp_accel(y, AXIS_Y);
 z = (data[23] + (data[24] << 8));
 z = clamp_accel(z, AXIS_Z);
 input_report_abs(udraw->accel_input_dev, ABS_X, x);
 input_report_abs(udraw->accel_input_dev, ABS_Y, y);
 input_report_abs(udraw->accel_input_dev, ABS_Z, z);
 input_sync(udraw->accel_input_dev);


 return 0;
}
