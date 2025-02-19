
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {unsigned int distance_max; int pressure_max; int type; } ;
struct wacom_wac {unsigned char* data; int* id; scalar_t__* tool; int reporting_data; int * serial; struct input_dev* pen_input; struct wacom_features features; } ;
struct input_dev {int dummy; } ;
typedef int __be16 ;


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
 scalar_t__ BTN_TOOL_LENS ;
 scalar_t__ BTN_TOOL_MOUSE ;
 scalar_t__ BTN_TOUCH ;
 int CINTIQ ;
 int EV_MSC ;
 int INTUOS ;
 int INTUOS3 ;
 int INTUOS3L ;
 int INTUOS3S ;
 int INTUOS4 ;
 int INTUOS4S ;
 int INTUOS5 ;
 int INTUOS5S ;
 int INTUOSHT2 ;
 int INTUOSPM ;
 int INTUOSPS ;
 int MSC_SERIAL ;
 int REL_WHEEL ;
 int WACOM_21UX2 ;
 unsigned char WACOM_REPORT_CINTIQ ;
 unsigned char WACOM_REPORT_INTUOS_PEN ;
 unsigned char WACOM_REPORT_PENABLED ;
 int be16_to_cpup (int *) ;
 scalar_t__ delay_pen_events (struct wacom_wac*) ;
 int input_event (struct input_dev*,int ,int ,int ) ;
 int input_report_abs (struct input_dev*,int ,unsigned char) ;
 int input_report_key (struct input_dev*,scalar_t__,int) ;
 int input_report_rel (struct input_dev*,int ,unsigned char) ;
 unsigned char wacom_intuos_id_mangle (int) ;
 int wacom_intuos_schedule_prox_event (struct wacom_wac*) ;

__attribute__((used)) static int wacom_intuos_general(struct wacom_wac *wacom)
{
 struct wacom_features *features = &wacom->features;
 unsigned char *data = wacom->data;
 struct input_dev *input = wacom->pen_input;
 int idx = (features->type == INTUOS) ? (data[1] & 0x01) : 0;
 unsigned char type = (data[1] >> 1) & 0x0F;
 unsigned int x, y, distance, t;

 if (data[0] != WACOM_REPORT_PENABLED && data[0] != WACOM_REPORT_CINTIQ &&
  data[0] != WACOM_REPORT_INTUOS_PEN)
  return 0;

 if (delay_pen_events(wacom))
  return 1;


 if (!wacom->id[idx]) {

  wacom_intuos_schedule_prox_event(wacom);
  return 1;
 }





 if ((!((wacom->id[idx] >> 16) & 0x01) &&
   (features->type == WACOM_21UX2)) ||

     (wacom->tool[idx] == BTN_TOOL_LENS &&
  (features->type == INTUOS3 ||
   features->type == INTUOS3S ||
   features->type == INTUOS4 ||
   features->type == INTUOS4S ||
   features->type == INTUOS5 ||
   features->type == INTUOS5S ||
   features->type == INTUOSPM ||
   features->type == INTUOSPS)) ||

    (features->type == CINTIQ && !(data[1] & 0x40)))
  return 1;

 x = (be16_to_cpup((__be16 *)&data[2]) << 1) | ((data[9] >> 1) & 1);
 y = (be16_to_cpup((__be16 *)&data[4]) << 1) | (data[9] & 1);
 distance = data[9] >> 2;
 if (features->type < INTUOS3S) {
  x >>= 1;
  y >>= 1;
  distance >>= 1;
 }
 if (features->type == INTUOSHT2)
  distance = features->distance_max - distance;
 input_report_abs(input, ABS_X, x);
 input_report_abs(input, ABS_Y, y);
 input_report_abs(input, ABS_DISTANCE, distance);

 switch (type) {
 case 0x00:
 case 0x01:
 case 0x02:
 case 0x03:

  t = (data[6] << 3) | ((data[7] & 0xC0) >> 5) | (data[1] & 1);
  if (features->pressure_max < 2047)
   t >>= 1;
  input_report_abs(input, ABS_PRESSURE, t);
  if (features->type != INTUOSHT2) {
      input_report_abs(input, ABS_TILT_X,
     (((data[7] << 1) & 0x7e) | (data[8] >> 7)) - 64);
      input_report_abs(input, ABS_TILT_Y, (data[8] & 0x7f) - 64);
  }
  input_report_key(input, BTN_STYLUS, data[1] & 2);
  input_report_key(input, BTN_STYLUS2, data[1] & 4);
  input_report_key(input, BTN_TOUCH, t > 10);
  break;

 case 0x0a:

  input_report_abs(input, ABS_WHEEL,
    (data[6] << 2) | ((data[7] >> 6) & 3));
  input_report_abs(input, ABS_TILT_X,
     (((data[7] << 1) & 0x7e) | (data[8] >> 7)) - 64);
  input_report_abs(input, ABS_TILT_Y, (data[8] & 0x7f) - 64);
  break;

 case 0x05:

  if (features->type >= INTUOS3S) {

   t = (data[6] << 3) | ((data[7] >> 5) & 7);
   t = (data[7] & 0x20) ? ((t > 900) ? ((t-1) / 2 - 1350) :
    ((t-1) / 2 + 450)) : (450 - t / 2) ;
   input_report_abs(input, ABS_Z, t);
  } else {

   t = (data[6] << 3) | ((data[7] >> 5) & 7);
   input_report_abs(input, ABS_RZ, (data[7] & 0x20) ?
    ((t - 1) / 2) : -t / 2);
  }
  break;

 case 0x04:

  input_report_key(input, BTN_LEFT, data[8] & 0x01);
  input_report_key(input, BTN_MIDDLE, data[8] & 0x02);
  input_report_key(input, BTN_RIGHT, data[8] & 0x04);

  input_report_key(input, BTN_SIDE, data[8] & 0x20);
  input_report_key(input, BTN_EXTRA, data[8] & 0x10);
  t = (data[6] << 2) | ((data[7] >> 6) & 3);
  input_report_abs(input, ABS_THROTTLE, (data[8] & 0x08) ? -t : t);
  break;

 case 0x06:

  input_report_key(input, BTN_LEFT, data[6] & 0x01);
  input_report_key(input, BTN_MIDDLE, data[6] & 0x02);
  input_report_key(input, BTN_RIGHT, data[6] & 0x04);
  input_report_rel(input, REL_WHEEL, ((data[7] & 0x80) >> 7)
     - ((data[7] & 0x40) >> 6));
  input_report_key(input, BTN_SIDE, data[6] & 0x08);
  input_report_key(input, BTN_EXTRA, data[6] & 0x10);

  input_report_abs(input, ABS_TILT_X,
   (((data[7] << 1) & 0x7e) | (data[8] >> 7)) - 64);
  input_report_abs(input, ABS_TILT_Y, (data[8] & 0x7f) - 64);
  break;

 case 0x08:
  if (wacom->tool[idx] == BTN_TOOL_MOUSE) {

   input_report_key(input, BTN_LEFT, data[8] & 0x04);
   input_report_key(input, BTN_MIDDLE, data[8] & 0x08);
   input_report_key(input, BTN_RIGHT, data[8] & 0x10);
   input_report_rel(input, REL_WHEEL, (data[8] & 0x01)
      - ((data[8] & 0x02) >> 1));


   if (features->type >= INTUOS3S && features->type <= INTUOS3L) {
    input_report_key(input, BTN_SIDE, data[8] & 0x40);
    input_report_key(input, BTN_EXTRA, data[8] & 0x20);
   }
  }
  else if (wacom->tool[idx] == BTN_TOOL_LENS) {

   input_report_key(input, BTN_LEFT, data[8] & 0x01);
   input_report_key(input, BTN_MIDDLE, data[8] & 0x02);
   input_report_key(input, BTN_RIGHT, data[8] & 0x04);
   input_report_key(input, BTN_SIDE, data[8] & 0x10);
   input_report_key(input, BTN_EXTRA, data[8] & 0x08);
  }
  break;

 case 0x07:
 case 0x09:
 case 0x0b:
 case 0x0c:
 case 0x0d:
 case 0x0e:
 case 0x0f:

  break;
 }

 input_report_abs(input, ABS_MISC,
    wacom_intuos_id_mangle(wacom->id[idx]));
 input_report_key(input, wacom->tool[idx], 1);
 input_event(input, EV_MSC, MSC_SERIAL, wacom->serial[idx]);
 wacom->reporting_data = 1;
 return 2;
}
