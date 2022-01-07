
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;
struct alps_data {int x_bits; int y_bits; int x_max; int y_max; } ;


 int DOLPHIN_COUNT_PER_ELECTRODE ;
 unsigned char DOLPHIN_PROFILE_XOFFSET ;
 unsigned char DOLPHIN_PROFILE_YOFFSET ;
 int PSMOUSE_CMD_GETINFO ;
 int PSMOUSE_CMD_RESET_WRAP ;
 int PSMOUSE_CMD_SETPOLL ;
 int PSMOUSE_CMD_SETRATE ;
 scalar_t__ alps_enter_command_mode (struct psmouse*) ;
 scalar_t__ alps_exit_command_mode (struct psmouse*) ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static int alps_dolphin_get_device_area(struct psmouse *psmouse,
     struct alps_data *priv)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param[4] = {0};
 int num_x_electrode, num_y_electrode;

 if (alps_enter_command_mode(psmouse))
  return -1;

 param[0] = 0x0a;
 if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_RESET_WRAP) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETPOLL) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETPOLL) ||
     ps2_command(ps2dev, &param[0], PSMOUSE_CMD_SETRATE) ||
     ps2_command(ps2dev, &param[0], PSMOUSE_CMD_SETRATE))
  return -1;

 if (ps2_command(ps2dev, param, PSMOUSE_CMD_GETINFO))
  return -1;
 num_x_electrode = DOLPHIN_PROFILE_XOFFSET + (param[2] & 0x0F);
 num_y_electrode = DOLPHIN_PROFILE_YOFFSET + ((param[2] >> 4) & 0x0F);
 priv->x_bits = num_x_electrode;
 priv->y_bits = num_y_electrode;
 priv->x_max = (num_x_electrode - 1) * DOLPHIN_COUNT_PER_ELECTRODE;
 priv->y_max = (num_y_electrode - 1) * DOLPHIN_COUNT_PER_ELECTRODE;

 if (alps_exit_command_mode(psmouse))
  return -1;

 return 0;
}
