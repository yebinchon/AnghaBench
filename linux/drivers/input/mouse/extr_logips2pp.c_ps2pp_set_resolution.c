
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ps2dev {int dummy; } ;
struct psmouse {int resolution; struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_SETRES ;
 int PSMOUSE_CMD_SETSCALE11 ;
 int ps2_command (struct ps2dev*,int*,int ) ;
 int psmouse_set_resolution (struct psmouse*,unsigned int) ;

__attribute__((used)) static void ps2pp_set_resolution(struct psmouse *psmouse,
     unsigned int resolution)
{
 if (resolution > 400) {
  struct ps2dev *ps2dev = &psmouse->ps2dev;
  u8 param = 3;

  ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11);
  ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11);
  ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11);
  ps2_command(ps2dev, &param, PSMOUSE_CMD_SETRES);
  psmouse->resolution = 800;
 } else
  psmouse_set_resolution(psmouse, resolution);
}
