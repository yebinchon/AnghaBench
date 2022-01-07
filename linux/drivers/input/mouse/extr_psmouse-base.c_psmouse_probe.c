
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ps2dev {TYPE_1__* serio; } ;
struct psmouse {struct ps2dev ps2dev; } ;
struct TYPE_2__ {int phys; } ;


 int ENODEV ;
 int PSMOUSE_CMD_GETID ;
 int PSMOUSE_CMD_RESET_DIS ;
 int ps2_command (struct ps2dev*,int*,int ) ;
 int psmouse_warn (struct psmouse*,char*,int ,int) ;

__attribute__((used)) static int psmouse_probe(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 u8 param[2];
 int error;







 param[0] = 0xa5;
 error = ps2_command(ps2dev, param, PSMOUSE_CMD_GETID);
 if (error)
  return error;

 if (param[0] != 0x00 && param[0] != 0x03 &&
     param[0] != 0x04 && param[0] != 0xff)
  return -ENODEV;





 error = ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_RESET_DIS);
 if (error)
  psmouse_warn(psmouse, "Failed to reset mouse on %s: %d\n",
        ps2dev->serio->phys, error);

 return 0;
}
