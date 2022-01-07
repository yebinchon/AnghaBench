
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int BIT (int) ;
 int EIO ;
 int ENODEV ;
 int PSMOUSE_CMD_SETSCALE21 ;
 scalar_t__ __alps_command_mode_write_reg (struct psmouse*,int) ;
 int alps_command_mode_read_reg (struct psmouse*,int) ;
 scalar_t__ alps_enter_command_mode (struct psmouse*) ;
 scalar_t__ alps_exit_command_mode (struct psmouse*) ;
 scalar_t__ alps_passthrough_mode_v3 (struct psmouse*,int,int) ;
 scalar_t__ alps_rpt_cmd (struct psmouse*,int ,int ,unsigned char*) ;
 scalar_t__ alps_trackstick_enter_extended_mode_v3_v6 (struct psmouse*) ;
 int psmouse_dbg (struct psmouse*,char*,unsigned char*) ;
 int psmouse_err (struct psmouse*,char*) ;
 int psmouse_warn (struct psmouse*,char*) ;

__attribute__((used)) static int alps_setup_trackstick_v3(struct psmouse *psmouse, int reg_base)
{
 int ret = 0;
 int reg_val;
 unsigned char param[4];
 if (alps_passthrough_mode_v3(psmouse, reg_base, 1))
  return -EIO;
 if (alps_rpt_cmd(psmouse, 0, PSMOUSE_CMD_SETSCALE21, param)) {
  psmouse_warn(psmouse, "Failed to initialize trackstick (E7 report failed)\n");
  ret = -ENODEV;
 } else {
  psmouse_dbg(psmouse, "trackstick E7 report: %3ph\n", param);
  if (alps_trackstick_enter_extended_mode_v3_v6(psmouse)) {
   psmouse_err(psmouse, "Failed to enter into trackstick extended mode\n");
   ret = -EIO;
  }
 }

 if (alps_passthrough_mode_v3(psmouse, reg_base, 0))
  return -EIO;

 if (ret)
  return ret;

 if (alps_enter_command_mode(psmouse))
  return -EIO;

 reg_val = alps_command_mode_read_reg(psmouse, reg_base + 0x08);
 if (reg_val == -1) {
  ret = -EIO;
 } else {




  reg_val |= BIT(1);
  if (__alps_command_mode_write_reg(psmouse, reg_val))
   ret = -EIO;
 }

 if (alps_exit_command_mode(psmouse))
  return -EIO;

 return ret;
}
