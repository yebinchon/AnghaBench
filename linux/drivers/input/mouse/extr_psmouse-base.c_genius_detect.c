
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ps2dev {int dummy; } ;
struct psmouse {char* vendor; char* name; int pktsize; TYPE_1__* dev; struct ps2dev ps2dev; } ;
struct TYPE_2__ {int relbit; int keybit; } ;


 int BTN_EXTRA ;
 int BTN_MIDDLE ;
 int BTN_SIDE ;
 int ENODEV ;
 int PSMOUSE_CMD_GETINFO ;
 int PSMOUSE_CMD_SETRES ;
 int PSMOUSE_CMD_SETSCALE11 ;
 int REL_WHEEL ;
 int __set_bit (int ,int ) ;
 int ps2_command (struct ps2dev*,int*,int ) ;

__attribute__((used)) static int genius_detect(struct psmouse *psmouse, bool set_properties)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 u8 param[4];

 param[0] = 3;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);
 ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11);
 ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11);
 ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11);
 ps2_command(ps2dev, param, PSMOUSE_CMD_GETINFO);

 if (param[0] != 0x00 || param[1] != 0x33 || param[2] != 0x55)
  return -ENODEV;

 if (set_properties) {
  __set_bit(BTN_MIDDLE, psmouse->dev->keybit);
  __set_bit(BTN_EXTRA, psmouse->dev->keybit);
  __set_bit(BTN_SIDE, psmouse->dev->keybit);
  __set_bit(REL_WHEEL, psmouse->dev->relbit);

  psmouse->vendor = "Genius";
  psmouse->name = "Mouse";
  psmouse->pktsize = 4;
 }

 return 0;
}
