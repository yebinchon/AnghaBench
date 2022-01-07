
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;
struct alps_data {int flags; int dev_id; } ;


 int ALPS_DUALPOINT ;
 int ALPS_DUALPOINT_WITH_PRESSURE ;
 scalar_t__ IS_SS4PLUS_DEV (int ) ;
 int PSMOUSE_CMD_ENABLE ;
 int alps_command_mode_read_reg (struct psmouse*,int) ;
 scalar_t__ alps_enter_command_mode (struct psmouse*) ;
 scalar_t__ alps_exit_command_mode (struct psmouse*) ;
 int ps2_command (struct ps2dev*,int *,int ) ;

__attribute__((used)) static int alps_update_dual_info_ss4_v2(unsigned char otp[][4],
     struct alps_data *priv,
     struct psmouse *psmouse)
{
 bool is_dual = 0;
 int reg_val = 0;
 struct ps2dev *ps2dev = &psmouse->ps2dev;

 if (IS_SS4PLUS_DEV(priv->dev_id)) {
  is_dual = (otp[0][0] >> 4) & 0x01;

  if (!is_dual) {

   if (alps_exit_command_mode(psmouse) == 0 &&
    alps_enter_command_mode(psmouse) == 0) {
    reg_val = alps_command_mode_read_reg(psmouse,
         0xD7);
   }
   alps_exit_command_mode(psmouse);
   ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE);

   if (reg_val == 0x0C || reg_val == 0x1D)
    is_dual = 1;
  }
 }

 if (is_dual)
  priv->flags |= ALPS_DUALPOINT |
     ALPS_DUALPOINT_WITH_PRESSURE;

 return 0;
}
