
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct psmouse {unsigned char* packet; struct elantech_data* private; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int debug; } ;
struct elantech_data {TYPE_1__ info; struct input_dev* tp_dev; } ;


 int REL_X ;
 int REL_Y ;
 int elantech_packet_dump (struct psmouse*) ;
 unsigned int get_unaligned_le32 (unsigned char*) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int psmouse_report_standard_buttons (struct input_dev*,unsigned char) ;

__attribute__((used)) static void elantech_report_trackpoint(struct psmouse *psmouse,
           int packet_type)
{
 struct elantech_data *etd = psmouse->private;
 struct input_dev *tp_dev = etd->tp_dev;
 unsigned char *packet = psmouse->packet;
 int x, y;
 u32 t;

 t = get_unaligned_le32(&packet[0]);

 switch (t & ~7U) {
 case 0x06000030U:
 case 0x16008020U:
 case 0x26800010U:
 case 0x36808000U:
  x = packet[4] - (int)((packet[1]^0x80) << 1);
  y = (int)((packet[2]^0x80) << 1) - packet[5];

  psmouse_report_standard_buttons(tp_dev, packet[0]);

  input_report_rel(tp_dev, REL_X, x);
  input_report_rel(tp_dev, REL_Y, y);

  input_sync(tp_dev);

  break;

 default:

  if (etd->info.debug == 1)
   elantech_packet_dump(psmouse);

  break;
 }
}
