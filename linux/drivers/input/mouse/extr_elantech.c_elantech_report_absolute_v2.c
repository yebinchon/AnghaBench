
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {unsigned char* packet; struct input_dev* dev; struct elantech_data* private; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ reports_pressure; } ;
struct elantech_data {TYPE_1__ info; int y_max; } ;


 int ABS_PRESSURE ;
 int ABS_TOOL_WIDTH ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_QUADTAP ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int elantech_report_semi_mt_data (struct input_dev*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int psmouse_report_standard_buttons (struct input_dev*,unsigned char) ;

__attribute__((used)) static void elantech_report_absolute_v2(struct psmouse *psmouse)
{
 struct elantech_data *etd = psmouse->private;
 struct input_dev *dev = psmouse->dev;
 unsigned char *packet = psmouse->packet;
 unsigned int fingers, x1 = 0, y1 = 0, x2 = 0, y2 = 0;
 unsigned int width = 0, pres = 0;


 fingers = (packet[0] & 0xc0) >> 6;

 switch (fingers) {
 case 3:




  if (packet[3] & 0x80)
   fingers = 4;

 case 1:




  x1 = ((packet[1] & 0x0f) << 8) | packet[2];




  y1 = etd->y_max - (((packet[4] & 0x0f) << 8) | packet[5]);

  pres = (packet[1] & 0xf0) | ((packet[4] & 0xf0) >> 4);
  width = ((packet[0] & 0x30) >> 2) | ((packet[3] & 0x30) >> 4);
  break;

 case 2:






  x1 = (((packet[0] & 0x10) << 4) | packet[1]) << 2;

  y1 = etd->y_max -
   ((((packet[0] & 0x20) << 3) | packet[2]) << 2);




  x2 = (((packet[3] & 0x10) << 4) | packet[4]) << 2;

  y2 = etd->y_max -
   ((((packet[3] & 0x20) << 3) | packet[5]) << 2);


  pres = 127;
  width = 7;
  break;
 }

 input_report_key(dev, BTN_TOUCH, fingers != 0);
 if (fingers != 0) {
  input_report_abs(dev, ABS_X, x1);
  input_report_abs(dev, ABS_Y, y1);
 }
 elantech_report_semi_mt_data(dev, fingers, x1, y1, x2, y2);
 input_report_key(dev, BTN_TOOL_FINGER, fingers == 1);
 input_report_key(dev, BTN_TOOL_DOUBLETAP, fingers == 2);
 input_report_key(dev, BTN_TOOL_TRIPLETAP, fingers == 3);
 input_report_key(dev, BTN_TOOL_QUADTAP, fingers == 4);
 psmouse_report_standard_buttons(dev, packet[0]);
 if (etd->info.reports_pressure) {
  input_report_abs(dev, ABS_PRESSURE, pres);
  input_report_abs(dev, ABS_TOOL_WIDTH, width);
 }

 input_sync(dev);
}
