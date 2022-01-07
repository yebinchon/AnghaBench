
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synusb {unsigned int* data; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef int s16 ;
typedef int __be16 ;


 int ABS_PRESSURE ;
 int REL_X ;
 int REL_Y ;
 int be16_to_cpup (int *) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int synusb_report_buttons (struct synusb*) ;

__attribute__((used)) static void synusb_report_stick(struct synusb *synusb)
{
 struct input_dev *input_dev = synusb->input;
 int x, y;
 unsigned int pressure;

 pressure = synusb->data[6];
 x = (s16)(be16_to_cpup((__be16 *)&synusb->data[2]) << 3) >> 7;
 y = (s16)(be16_to_cpup((__be16 *)&synusb->data[4]) << 3) >> 7;

 if (pressure > 0) {
  input_report_rel(input_dev, REL_X, x);
  input_report_rel(input_dev, REL_Y, -y);
 }

 input_report_abs(input_dev, ABS_PRESSURE, pressure);

 synusb_report_buttons(synusb);

 input_sync(input_dev);
}
