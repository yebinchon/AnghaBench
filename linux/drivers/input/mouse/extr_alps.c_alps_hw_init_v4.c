
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_ENABLE ;
 int PSMOUSE_CMD_GETID ;
 int PSMOUSE_CMD_SETRATE ;
 scalar_t__ alps_absolute_mode_v4 (struct psmouse*) ;
 scalar_t__ alps_command_mode_write_reg (struct psmouse*,int,int) ;
 scalar_t__ alps_enter_command_mode (struct psmouse*) ;
 int alps_exit_command_mode (struct psmouse*) ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int ) ;
 int psmouse_err (struct psmouse*,char*) ;

__attribute__((used)) static int alps_hw_init_v4(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param[4];

 if (alps_enter_command_mode(psmouse))
  goto error;

 if (alps_absolute_mode_v4(psmouse)) {
  psmouse_err(psmouse, "Failed to enter absolute mode\n");
  goto error;
 }

 if (alps_command_mode_write_reg(psmouse, 0x0007, 0x8c))
  goto error;

 if (alps_command_mode_write_reg(psmouse, 0x0149, 0x03))
  goto error;

 if (alps_command_mode_write_reg(psmouse, 0x0160, 0x03))
  goto error;

 if (alps_command_mode_write_reg(psmouse, 0x017f, 0x15))
  goto error;

 if (alps_command_mode_write_reg(psmouse, 0x0151, 0x01))
  goto error;

 if (alps_command_mode_write_reg(psmouse, 0x0168, 0x03))
  goto error;

 if (alps_command_mode_write_reg(psmouse, 0x014a, 0x03))
  goto error;

 if (alps_command_mode_write_reg(psmouse, 0x0161, 0x03))
  goto error;

 alps_exit_command_mode(psmouse);






 param[0] = 0xc8;
 param[1] = 0x64;
 param[2] = 0x50;
 if (ps2_command(ps2dev, &param[0], PSMOUSE_CMD_SETRATE) ||
     ps2_command(ps2dev, &param[1], PSMOUSE_CMD_SETRATE) ||
     ps2_command(ps2dev, &param[2], PSMOUSE_CMD_SETRATE) ||
     ps2_command(ps2dev, param, PSMOUSE_CMD_GETID))
  return -1;


 param[0] = 0x64;
 if (ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE)) {
  psmouse_err(psmouse, "Failed to enable data reporting\n");
  return -1;
 }

 return 0;

error:





 alps_exit_command_mode(psmouse);
 return -1;
}
