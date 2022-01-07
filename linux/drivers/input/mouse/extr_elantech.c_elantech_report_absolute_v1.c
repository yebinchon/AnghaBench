
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {unsigned char* packet; struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int fw_version; int* capabilities; scalar_t__ jumpy_cursor; } ;
struct elantech_data {int single_finger_reports; unsigned char y_max; TYPE_1__ info; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int ETP_CAP_HAS_ROCKER ;
 int elantech_debug (char*) ;
 int input_report_abs (struct input_dev*,int ,unsigned char) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;
 int psmouse_report_standard_buttons (struct input_dev*,unsigned char) ;

__attribute__((used)) static void elantech_report_absolute_v1(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct elantech_data *etd = psmouse->private;
 unsigned char *packet = psmouse->packet;
 int fingers;

 if (etd->info.fw_version < 0x020000) {




  fingers = ((packet[1] & 0x80) >> 7) +
    ((packet[1] & 0x30) >> 4);
 } else {




  fingers = (packet[0] & 0xc0) >> 6;
 }

 if (etd->info.jumpy_cursor) {
  if (fingers != 1) {
   etd->single_finger_reports = 0;
  } else if (etd->single_finger_reports < 2) {

   etd->single_finger_reports++;
   elantech_debug("discarding packet\n");
   return;
  }
 }

 input_report_key(dev, BTN_TOUCH, fingers != 0);





 if (fingers) {
  input_report_abs(dev, ABS_X,
   ((packet[1] & 0x0c) << 6) | packet[2]);
  input_report_abs(dev, ABS_Y,
   etd->y_max - (((packet[1] & 0x03) << 8) | packet[3]));
 }

 input_report_key(dev, BTN_TOOL_FINGER, fingers == 1);
 input_report_key(dev, BTN_TOOL_DOUBLETAP, fingers == 2);
 input_report_key(dev, BTN_TOOL_TRIPLETAP, fingers == 3);

 psmouse_report_standard_buttons(dev, packet[0]);

 if (etd->info.fw_version < 0x020000 &&
     (etd->info.capabilities[0] & ETP_CAP_HAS_ROCKER)) {

  input_report_key(dev, BTN_FORWARD, packet[0] & 0x40);

  input_report_key(dev, BTN_BACK, packet[0] & 0x80);
 }

 input_sync(dev);
}
