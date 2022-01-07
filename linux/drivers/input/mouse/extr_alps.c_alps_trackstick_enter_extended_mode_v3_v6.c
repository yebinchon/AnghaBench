
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; } ;


 int PSMOUSE_CMD_SETRATE ;
 int PSMOUSE_CMD_SETSCALE11 ;
 scalar_t__ ps2_command (int *,unsigned char*,int ) ;

__attribute__((used)) static int alps_trackstick_enter_extended_mode_v3_v6(struct psmouse *psmouse)
{
 unsigned char param[2] = {0xC8, 0x14};

 if (ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11) ||
     ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11) ||
     ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11) ||
     ps2_command(&psmouse->ps2dev, &param[0], PSMOUSE_CMD_SETRATE) ||
     ps2_command(&psmouse->ps2dev, &param[1], PSMOUSE_CMD_SETRATE))
  return -1;

 return 0;
}
