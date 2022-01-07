
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_DISABLE ;
 int PSMOUSE_CMD_SETSCALE11 ;
 int PSMOUSE_CMD_SETSCALE21 ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int) ;
 int ps2_drain (struct ps2dev*,int,int) ;

__attribute__((used)) static int alps_passthrough_mode_v2(struct psmouse *psmouse, bool enable)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 int cmd = enable ? PSMOUSE_CMD_SETSCALE21 : PSMOUSE_CMD_SETSCALE11;

 if (ps2_command(ps2dev, ((void*)0), cmd) ||
     ps2_command(ps2dev, ((void*)0), cmd) ||
     ps2_command(ps2dev, ((void*)0), cmd) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE))
  return -1;


 ps2_drain(ps2dev, 3, 100);

 return 0;
}
