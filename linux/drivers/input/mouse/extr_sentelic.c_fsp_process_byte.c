
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; int pktcnt; struct fsp_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct fsp_data {int last_mt_fgr; int flags; } ;
typedef int psmouse_ret_t ;


 int ABS_X ;
 int ABS_Y ;
 unsigned char BIT (int) ;
 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int FSPDRV_FLAG_EN_OPC ;
 unsigned char FSP_PB0_LBTN ;
 unsigned char FSP_PB0_MFMC ;
 unsigned char FSP_PB0_MFMC_FGR2 ;
 unsigned char FSP_PB0_PHY_BTN ;



 char FSP_PKT_TYPE_SHIFT ;
 unsigned short GET_ABS_X (unsigned char*) ;
 unsigned short GET_ABS_Y (unsigned char*) ;
 int PSMOUSE_FULL_PACKET ;
 int PSMOUSE_GOOD_DATA ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int fsp_packet_debug (struct psmouse*,unsigned char*) ;
 int fsp_set_slot (struct input_dev*,int,int,unsigned short,unsigned short) ;
 int input_report_abs (struct input_dev*,int ,unsigned short) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_report_rel (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;
 int psmouse_report_standard_packet (struct input_dev*,unsigned char*) ;

__attribute__((used)) static psmouse_ret_t fsp_process_byte(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct fsp_data *ad = psmouse->private;
 unsigned char *packet = psmouse->packet;
 unsigned char button_status = 0, lscroll = 0, rscroll = 0;
 unsigned short abs_x, abs_y, fgrs = 0;

 if (psmouse->pktcnt < 4)
  return PSMOUSE_GOOD_DATA;





 fsp_packet_debug(psmouse, packet);

 switch (psmouse->packet[0] >> FSP_PKT_TYPE_SHIFT) {
 case 130:

  if ((packet[0] == 0x48 || packet[0] == 0x49) &&
      packet[1] == 0 && packet[2] == 0) {





   packet[3] &= 0xf0;
  }

  abs_x = GET_ABS_X(packet);
  abs_y = GET_ABS_Y(packet);

  if (packet[0] & FSP_PB0_MFMC) {




   fgrs = 2;


   if (packet[0] & FSP_PB0_MFMC_FGR2) {

    if (ad->last_mt_fgr == 2) {





     fgrs = 1;
     fsp_set_slot(dev, 0, 0, 0, 0);
    }
    ad->last_mt_fgr = 2;

    fsp_set_slot(dev, 1, fgrs == 2, abs_x, abs_y);
   } else {

    if (ad->last_mt_fgr == 1) {





     fgrs = 1;
     fsp_set_slot(dev, 1, 0, 0, 0);
    }
    ad->last_mt_fgr = 1;
    fsp_set_slot(dev, 0, fgrs != 0, abs_x, abs_y);
   }
  } else {

   if ((packet[0] & (FSP_PB0_LBTN|FSP_PB0_PHY_BTN)) ==
    FSP_PB0_LBTN) {




    packet[0] &= ~FSP_PB0_LBTN;
   }


   ad->last_mt_fgr = 0;

   if (abs_x != 0 && abs_y != 0)
    fgrs = 1;

   fsp_set_slot(dev, 0, fgrs > 0, abs_x, abs_y);
   fsp_set_slot(dev, 1, 0, 0, 0);
  }
  if (fgrs == 1 || (fgrs == 2 && !(packet[0] & FSP_PB0_MFMC_FGR2))) {
   input_report_abs(dev, ABS_X, abs_x);
   input_report_abs(dev, ABS_Y, abs_y);
  }
  input_report_key(dev, BTN_LEFT, packet[0] & 0x01);
  input_report_key(dev, BTN_RIGHT, packet[0] & 0x02);
  input_report_key(dev, BTN_TOUCH, fgrs);
  input_report_key(dev, BTN_TOOL_FINGER, fgrs == 1);
  input_report_key(dev, BTN_TOOL_DOUBLETAP, fgrs == 2);
  break;

 case 128:

  if ((ad->flags & FSPDRV_FLAG_EN_OPC) != FSPDRV_FLAG_EN_OPC)
   packet[0] &= ~FSP_PB0_LBTN;


 case 129:


  if (packet[3] != 0) {
   if (packet[3] & BIT(0))
    button_status |= 0x01;
   if (packet[3] & BIT(1))
    button_status |= 0x0f;
   if (packet[3] & BIT(2))
    button_status |= BIT(4);
   if (packet[3] & BIT(3))
    button_status |= BIT(5);

   if (button_status != 0)
    packet[3] = button_status;
   rscroll = (packet[3] >> 4) & 1;
   lscroll = (packet[3] >> 5) & 1;
  }



  input_report_rel(dev, REL_WHEEL,
     (int)(packet[3] & 8) - (int)(packet[3] & 7));
  input_report_rel(dev, REL_HWHEEL, lscroll - rscroll);
  input_report_key(dev, BTN_BACK, lscroll);
  input_report_key(dev, BTN_FORWARD, rscroll);




  psmouse_report_standard_packet(dev, packet);
  break;
 }

 input_sync(dev);

 return PSMOUSE_FULL_PACKET;
}
