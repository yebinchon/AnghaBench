
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psmouse {int* packet; int pktcnt; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef int psmouse_ret_t ;


 int BIT (int) ;
 int BTN_BACK ;
 int BTN_EXTRA ;
 int BTN_FORWARD ;
 int BTN_SIDE ;
 int BTN_TASK ;
 int PSMOUSE_FULL_PACKET ;
 int PSMOUSE_GOOD_DATA ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 int psmouse_dbg (struct psmouse*,char*,int) ;
 int psmouse_report_standard_buttons (struct input_dev*,int) ;
 int psmouse_report_standard_packet (struct input_dev*,int*) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static psmouse_ret_t ps2pp_process_byte(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 u8 *packet = psmouse->packet;

 if (psmouse->pktcnt < 3)
  return PSMOUSE_GOOD_DATA;





 if ((packet[0] & 0x48) == 0x48 && (packet[1] & 0x02) == 0x02) {


  switch ((packet[1] >> 4) | (packet[0] & 0x30)) {

  case 0x0d:

   input_report_rel(dev,
    packet[2] & 0x80 ? REL_HWHEEL : REL_WHEEL,
    -sign_extend32(packet[2], 3));
   input_report_key(dev, BTN_SIDE, packet[2] & BIT(4));
   input_report_key(dev, BTN_EXTRA, packet[2] & BIT(5));

   break;

  case 0x0e:

   input_report_key(dev, BTN_SIDE, packet[2] & BIT(0));
   input_report_key(dev, BTN_EXTRA, packet[2] & BIT(1));
   input_report_key(dev, BTN_TASK, packet[2] & BIT(2));
   input_report_key(dev, BTN_BACK, packet[2] & BIT(3));
   input_report_key(dev, BTN_FORWARD, packet[2] & BIT(4));

   break;

  case 0x0f:

   input_report_rel(dev,
    packet[2] & 0x08 ? REL_HWHEEL : REL_WHEEL,
    -sign_extend32(packet[2] >> 4, 3));
   packet[0] = packet[2] | BIT(3);
   break;

  default:
   psmouse_dbg(psmouse,
        "Received PS2++ packet #%x, but don't know how to handle.\n",
        (packet[1] >> 4) | (packet[0] & 0x30));
   break;
  }

  psmouse_report_standard_buttons(dev, packet[0]);

 } else {

  psmouse_report_standard_packet(dev, packet);
 }

 input_sync(dev);

 return PSMOUSE_FULL_PACKET;

}
