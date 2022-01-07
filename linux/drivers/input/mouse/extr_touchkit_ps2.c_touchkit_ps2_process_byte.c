
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; int pktcnt; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef int psmouse_ret_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int PSMOUSE_FULL_PACKET ;
 int PSMOUSE_GOOD_DATA ;
 int TOUCHKIT_GET_TOUCHED (unsigned char*) ;
 int TOUCHKIT_GET_X (unsigned char*) ;
 int TOUCHKIT_GET_Y (unsigned char*) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static psmouse_ret_t touchkit_ps2_process_byte(struct psmouse *psmouse)
{
 unsigned char *packet = psmouse->packet;
 struct input_dev *dev = psmouse->dev;

 if (psmouse->pktcnt != 5)
  return PSMOUSE_GOOD_DATA;

 input_report_abs(dev, ABS_X, TOUCHKIT_GET_X(packet));
 input_report_abs(dev, ABS_Y, TOUCHKIT_GET_Y(packet));
 input_report_key(dev, BTN_TOUCH, TOUCHKIT_GET_TOUCHED(packet));
 input_sync(dev);

 return PSMOUSE_FULL_PACKET;
}
