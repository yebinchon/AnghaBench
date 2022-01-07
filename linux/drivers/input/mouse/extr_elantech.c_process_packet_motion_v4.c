
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {unsigned char* packet; struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct elantech_data {TYPE_1__* mt; } ;
struct TYPE_2__ {int x; int y; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ETP_WEIGHT_VALUE ;
 int elantech_input_sync_v4 (struct psmouse*) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;

__attribute__((used)) static void process_packet_motion_v4(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct elantech_data *etd = psmouse->private;
 unsigned char *packet = psmouse->packet;
 int weight, delta_x1 = 0, delta_y1 = 0, delta_x2 = 0, delta_y2 = 0;
 int id, sid;

 id = ((packet[0] & 0xe0) >> 5) - 1;
 if (id < 0)
  return;

 sid = ((packet[3] & 0xe0) >> 5) - 1;
 weight = (packet[0] & 0x10) ? ETP_WEIGHT_VALUE : 1;





 delta_x1 = (signed char)packet[1];
 delta_y1 = (signed char)packet[2];
 delta_x2 = (signed char)packet[4];
 delta_y2 = (signed char)packet[5];

 etd->mt[id].x += delta_x1 * weight;
 etd->mt[id].y -= delta_y1 * weight;
 input_mt_slot(dev, id);
 input_report_abs(dev, ABS_MT_POSITION_X, etd->mt[id].x);
 input_report_abs(dev, ABS_MT_POSITION_Y, etd->mt[id].y);

 if (sid >= 0) {
  etd->mt[sid].x += delta_x2 * weight;
  etd->mt[sid].y -= delta_y2 * weight;
  input_mt_slot(dev, sid);
  input_report_abs(dev, ABS_MT_POSITION_X, etd->mt[sid].x);
  input_report_abs(dev, ABS_MT_POSITION_Y, etd->mt[sid].y);
 }

 elantech_input_sync_v4(psmouse);
}
