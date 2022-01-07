
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_DISABLE ;
 int PSMOUSE_CMD_GETINFO ;
 int PSMOUSE_CMD_RESET_WRAP ;
 int PSMOUSE_CMD_SETSCALE11 ;
 int PSMOUSE_CMD_SETSCALE21 ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int ) ;

__attribute__((used)) static int alps_monitor_mode(struct psmouse *psmouse, bool enable)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;

 if (enable) {

  if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_RESET_WRAP) ||
      ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_GETINFO) ||
      ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE) ||
      ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE) ||
      ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE21) ||
      ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11) ||
      ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE21) ||
      ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_GETINFO))
   return -1;
 } else {

  if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_RESET_WRAP))
   return -1;
 }

 return 0;
}
