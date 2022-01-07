
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {unsigned char* data; int * tool; TYPE_1__* shared; struct input_dev* pen_input; } ;
struct input_dev {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {int stylus_in_proximity; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int delay_pen_events (struct wacom_wac*) ;
 int input_report_abs (struct input_dev*,int ,unsigned char) ;
 int input_report_key (struct input_dev*,int ,int) ;
 unsigned char le16_to_cpup (int *) ;

__attribute__((used)) static int wacom_tpc_pen(struct wacom_wac *wacom)
{
 unsigned char *data = wacom->data;
 struct input_dev *input = wacom->pen_input;
 bool prox = data[1] & 0x20;

 if (!wacom->shared->stylus_in_proximity)

  wacom->tool[0] = (data[1] & 0x0c) ? BTN_TOOL_RUBBER : BTN_TOOL_PEN;


 wacom->shared->stylus_in_proximity = prox;




 if (!delay_pen_events(wacom)) {
  input_report_key(input, BTN_STYLUS, data[1] & 0x02);
  input_report_key(input, BTN_STYLUS2, data[1] & 0x10);
  input_report_abs(input, ABS_X, le16_to_cpup((__le16 *)&data[2]));
  input_report_abs(input, ABS_Y, le16_to_cpup((__le16 *)&data[4]));
  input_report_abs(input, ABS_PRESSURE, ((data[7] & 0x07) << 8) | data[6]);
  input_report_key(input, BTN_TOUCH, data[1] & 0x05);
  input_report_key(input, wacom->tool[0], prox);
  return 1;
 }

 return 0;
}
