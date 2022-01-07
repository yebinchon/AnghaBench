
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ps2dev {int dummy; } ;
struct psmouse {char* vendor; char* name; struct ps2dev ps2dev; } ;


 int ENODEV ;
 int PSMOUSE_CMD_GETINFO ;
 int PSMOUSE_CMD_SETRES ;
 int ps2_command (struct ps2dev*,int*,int ) ;

int synaptics_detect(struct psmouse *psmouse, bool set_properties)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 u8 param[4] = { 0 };

 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);
 ps2_command(ps2dev, param, PSMOUSE_CMD_GETINFO);

 if (param[1] != 0x47)
  return -ENODEV;

 if (set_properties) {
  psmouse->vendor = "Synaptics";
  psmouse->name = "TouchPad";
 }

 return 0;
}
