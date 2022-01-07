
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_SETRATE ;
 int PSMOUSE_CMD_SETSTREAM ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static int alps_hw_init_dolphin_v1(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param[2];


 param[0] = 0x64;
 param[1] = 0x28;

 if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSTREAM) ||
     ps2_command(ps2dev, &param[0], PSMOUSE_CMD_SETRATE) ||
     ps2_command(ps2dev, &param[1], PSMOUSE_CMD_SETRATE))
  return -1;

 return 0;
}
