
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int ETP_MAX_FINGERS ;
 int MT_TOOL_FINGER ;
 int elantech_input_sync_v4 (struct psmouse*) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;

__attribute__((used)) static void process_packet_status_v4(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 unsigned char *packet = psmouse->packet;
 unsigned fingers;
 int i;


 fingers = packet[1] & 0x1f;
 for (i = 0; i < ETP_MAX_FINGERS; i++) {
  if ((fingers & (1 << i)) == 0) {
   input_mt_slot(dev, i);
   input_mt_report_slot_state(dev, MT_TOOL_FINGER, 0);
  }
 }

 elantech_input_sync_v4(psmouse);
}
