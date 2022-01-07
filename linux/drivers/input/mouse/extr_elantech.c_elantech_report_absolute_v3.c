
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {unsigned char* packet; struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct elantech_data {int info; int y_max; TYPE_1__* mt; } ;
struct TYPE_2__ {unsigned char x; unsigned int y; } ;


 int ABS_PRESSURE ;
 int ABS_TOOL_WIDTH ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int PACKET_V3_HEAD ;
 scalar_t__ elantech_is_buttonpad (int *) ;
 int elantech_report_semi_mt_data (struct input_dev*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;
 int psmouse_report_standard_buttons (struct input_dev*,unsigned char) ;

__attribute__((used)) static void elantech_report_absolute_v3(struct psmouse *psmouse,
     int packet_type)
{
 struct input_dev *dev = psmouse->dev;
 struct elantech_data *etd = psmouse->private;
 unsigned char *packet = psmouse->packet;
 unsigned int fingers = 0, x1 = 0, y1 = 0, x2 = 0, y2 = 0;
 unsigned int width = 0, pres = 0;


 fingers = (packet[0] & 0xc0) >> 6;

 switch (fingers) {
 case 3:
 case 1:




  x1 = ((packet[1] & 0x0f) << 8) | packet[2];




  y1 = etd->y_max - (((packet[4] & 0x0f) << 8) | packet[5]);
  break;

 case 2:
  if (packet_type == PACKET_V3_HEAD) {




   etd->mt[0].x = ((packet[1] & 0x0f) << 8) | packet[2];




   etd->mt[0].y = etd->y_max -
    (((packet[4] & 0x0f) << 8) | packet[5]);



   return;
  }


  x1 = etd->mt[0].x;
  y1 = etd->mt[0].y;
  x2 = ((packet[1] & 0x0f) << 8) | packet[2];
  y2 = etd->y_max - (((packet[4] & 0x0f) << 8) | packet[5]);
  break;
 }

 pres = (packet[1] & 0xf0) | ((packet[4] & 0xf0) >> 4);
 width = ((packet[0] & 0x30) >> 2) | ((packet[3] & 0x30) >> 4);

 input_report_key(dev, BTN_TOUCH, fingers != 0);
 if (fingers != 0) {
  input_report_abs(dev, ABS_X, x1);
  input_report_abs(dev, ABS_Y, y1);
 }
 elantech_report_semi_mt_data(dev, fingers, x1, y1, x2, y2);
 input_report_key(dev, BTN_TOOL_FINGER, fingers == 1);
 input_report_key(dev, BTN_TOOL_DOUBLETAP, fingers == 2);
 input_report_key(dev, BTN_TOOL_TRIPLETAP, fingers == 3);


 if (elantech_is_buttonpad(&etd->info))
  input_report_key(dev, BTN_LEFT, packet[0] & 0x03);
 else
  psmouse_report_standard_buttons(dev, packet[0]);

 input_report_abs(dev, ABS_PRESSURE, pres);
 input_report_abs(dev, ABS_TOOL_WIDTH, width);

 input_sync(dev);
}
