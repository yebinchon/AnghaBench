
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {unsigned char* packet; struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct elantech_data {int y_max; int width; TYPE_1__* mt; } ;
struct TYPE_2__ {unsigned char x; int y; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_TOOL_WIDTH ;
 int MT_TOOL_FINGER ;
 int elantech_input_sync_v4 (struct psmouse*) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;

__attribute__((used)) static void process_packet_head_v4(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct elantech_data *etd = psmouse->private;
 unsigned char *packet = psmouse->packet;
 int id = ((packet[3] & 0xe0) >> 5) - 1;
 int pres, traces;

 if (id < 0)
  return;

 etd->mt[id].x = ((packet[1] & 0x0f) << 8) | packet[2];
 etd->mt[id].y = etd->y_max - (((packet[4] & 0x0f) << 8) | packet[5]);
 pres = (packet[1] & 0xf0) | ((packet[4] & 0xf0) >> 4);
 traces = (packet[0] & 0xf0) >> 4;

 input_mt_slot(dev, id);
 input_mt_report_slot_state(dev, MT_TOOL_FINGER, 1);

 input_report_abs(dev, ABS_MT_POSITION_X, etd->mt[id].x);
 input_report_abs(dev, ABS_MT_POSITION_Y, etd->mt[id].y);
 input_report_abs(dev, ABS_MT_PRESSURE, pres);
 input_report_abs(dev, ABS_MT_TOUCH_MAJOR, traces * etd->width);

 input_report_abs(dev, ABS_TOOL_WIDTH, traces);

 elantech_input_sync_v4(psmouse);
}
