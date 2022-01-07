
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {scalar_t__ type; } ;
struct wacom_wac {unsigned char* data; scalar_t__* tool; scalar_t__* id; int * serial; struct wacom_features features; struct input_dev* pen_input; } ;
struct input_dev {int dummy; } ;


 int ABS_DISTANCE ;
 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_RZ ;
 int ABS_THROTTLE ;
 int ABS_TILT_X ;
 int ABS_TILT_Y ;
 int ABS_WHEEL ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 scalar_t__ BTN_EXTRA ;
 scalar_t__ BTN_LEFT ;
 scalar_t__ BTN_MIDDLE ;
 scalar_t__ BTN_RIGHT ;
 scalar_t__ BTN_SIDE ;
 scalar_t__ BTN_STYLUS ;
 scalar_t__ BTN_STYLUS2 ;
 scalar_t__ BTN_TOOL_MOUSE ;
 scalar_t__ BTN_TOUCH ;
 int EV_MSC ;
 scalar_t__ INTUOS ;
 scalar_t__ INTUOS3S ;
 int MSC_SERIAL ;
 int input_event (struct input_dev*,int ,int ,int ) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,scalar_t__,int ) ;

__attribute__((used)) static void wacom_exit_report(struct wacom_wac *wacom)
{
 struct input_dev *input = wacom->pen_input;
 struct wacom_features *features = &wacom->features;
 unsigned char *data = wacom->data;
 int idx = (features->type == INTUOS) ? (data[1] & 0x01) : 0;





 input_report_abs(input, ABS_X, 0);
 input_report_abs(input, ABS_Y, 0);
 input_report_abs(input, ABS_DISTANCE, 0);
 input_report_abs(input, ABS_TILT_X, 0);
 input_report_abs(input, ABS_TILT_Y, 0);
 if (wacom->tool[idx] >= BTN_TOOL_MOUSE) {
  input_report_key(input, BTN_LEFT, 0);
  input_report_key(input, BTN_MIDDLE, 0);
  input_report_key(input, BTN_RIGHT, 0);
  input_report_key(input, BTN_SIDE, 0);
  input_report_key(input, BTN_EXTRA, 0);
  input_report_abs(input, ABS_THROTTLE, 0);
  input_report_abs(input, ABS_RZ, 0);
 } else {
  input_report_abs(input, ABS_PRESSURE, 0);
  input_report_key(input, BTN_STYLUS, 0);
  input_report_key(input, BTN_STYLUS2, 0);
  input_report_key(input, BTN_TOUCH, 0);
  input_report_abs(input, ABS_WHEEL, 0);
  if (features->type >= INTUOS3S)
   input_report_abs(input, ABS_Z, 0);
 }
 input_report_key(input, wacom->tool[idx], 0);
 input_report_abs(input, ABS_MISC, 0);
 input_event(input, EV_MSC, MSC_SERIAL, wacom->serial[idx]);
 wacom->id[idx] = 0;
}
