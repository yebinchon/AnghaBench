
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_ENABLE ;
 scalar_t__ __alps_command_mode_write_reg (struct psmouse*,int) ;
 int alps_command_mode_read_reg (struct psmouse*,int) ;
 scalar_t__ alps_command_mode_write_reg (struct psmouse*,int,int) ;
 scalar_t__ alps_enter_command_mode (struct psmouse*) ;
 int alps_exit_command_mode (struct psmouse*) ;
 scalar_t__ alps_get_v3_v7_resolution (struct psmouse*,int) ;
 int ps2_command (struct ps2dev*,int *,int ) ;

__attribute__((used)) static int alps_hw_init_v7(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 int reg_val, ret = -1;

 if (alps_enter_command_mode(psmouse) ||
     alps_command_mode_read_reg(psmouse, 0xc2d9) == -1)
  goto error;

 if (alps_get_v3_v7_resolution(psmouse, 0xc397))
  goto error;

 if (alps_command_mode_write_reg(psmouse, 0xc2c9, 0x64))
  goto error;

 reg_val = alps_command_mode_read_reg(psmouse, 0xc2c4);
 if (reg_val == -1)
  goto error;
 if (__alps_command_mode_write_reg(psmouse, reg_val | 0x02))
  goto error;

 alps_exit_command_mode(psmouse);
 return ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE);

error:
 alps_exit_command_mode(psmouse);
 return ret;
}
