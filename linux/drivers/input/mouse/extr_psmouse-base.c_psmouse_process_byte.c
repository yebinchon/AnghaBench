
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct psmouse {int* packet; scalar_t__ pktcnt; scalar_t__ pktsize; int extra_buttons; TYPE_1__* protocol; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef int s8 ;
typedef int psmouse_ret_t ;
struct TYPE_2__ {int type; } ;


 int BIT (int) ;
 int BTN_EXTRA ;
 int BTN_SIDE ;

 int PSMOUSE_FULL_PACKET ;

 int PSMOUSE_GOOD_DATA ;



 int REL_HWHEEL ;
 int REL_WHEEL ;
 int abs (int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int psmouse_a4tech_2wheels ;
 int psmouse_report_standard_packet (struct input_dev*,int*) ;
 int sign_extend32 (int,int) ;

psmouse_ret_t psmouse_process_byte(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 u8 *packet = psmouse->packet;
 int wheel;

 if (psmouse->pktcnt < psmouse->pktsize)
  return PSMOUSE_GOOD_DATA;



 switch (psmouse->protocol->type) {
 case 129:

  input_report_rel(dev, REL_WHEEL, -(s8) packet[3]);
  break;

 case 130:

  switch (packet[3] & 0xC0) {
  case 0x80:
   input_report_rel(dev, REL_WHEEL,
      -sign_extend32(packet[3], 5));
   break;
  case 0x40:
   input_report_rel(dev, REL_HWHEEL,
      -sign_extend32(packet[3], 5));
   break;
  case 0x00:
  case 0xC0:
   wheel = sign_extend32(packet[3], 3);






   if (psmouse_a4tech_2wheels && abs(wheel) > 1)
    input_report_rel(dev, REL_HWHEEL, wheel / 2);
   else
    input_report_rel(dev, REL_WHEEL, -wheel);

   input_report_key(dev, BTN_SIDE, packet[3] & BIT(4));
   input_report_key(dev, BTN_EXTRA, packet[3] & BIT(5));
   break;
  }
  break;

 case 131:

  input_report_rel(dev, REL_WHEEL, -(s8) packet[3]);


  input_report_key(dev, BTN_SIDE, packet[0] & BIT(6));
  input_report_key(dev, BTN_EXTRA, packet[0] & BIT(7));
  break;

 case 128:

  input_report_key(dev, BTN_EXTRA, packet[0] & BIT(3));





  packet[1] |= (packet[0] & 0x40) << 1;
  break;

 case 132:




  input_report_key(dev, BTN_SIDE, packet[0] & BIT(3));
  packet[0] |= BIT(3);
  break;

 default:
  break;
 }


 packet[0] |= psmouse->extra_buttons;
 psmouse_report_standard_packet(dev, packet);

 input_sync(dev);

 return PSMOUSE_FULL_PACKET;
}
