
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {int ps2dev; struct elantech_data* private; } ;
struct TYPE_2__ {int hw_version; } ;
struct elantech_data {TYPE_1__ info; } ;


 unsigned char ETP_PS2_CUSTOM_COMMAND ;
 unsigned char ETP_REGISTER_READWRITE ;
 unsigned char ETP_REGISTER_WRITE ;
 unsigned char PSMOUSE_CMD_SETSCALE11 ;
 int elantech_ps2_command (struct psmouse*,int *,unsigned char) ;
 int ps2_command (int *,int *,unsigned char) ;
 int ps2_sliced_command (int *,unsigned char) ;
 int psmouse_err (struct psmouse*,char*,unsigned char,unsigned char) ;

__attribute__((used)) static int elantech_write_reg(struct psmouse *psmouse, unsigned char reg,
    unsigned char val)
{
 struct elantech_data *etd = psmouse->private;
 int rc = 0;

 if (reg < 0x07 || reg > 0x26)
  return -1;

 if (reg > 0x11 && reg < 0x20)
  return -1;

 switch (etd->info.hw_version) {
 case 1:
  if (ps2_sliced_command(&psmouse->ps2dev, ETP_REGISTER_WRITE) ||
      ps2_sliced_command(&psmouse->ps2dev, reg) ||
      ps2_sliced_command(&psmouse->ps2dev, val) ||
      ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11)) {
   rc = -1;
  }
  break;

 case 2:
  if (elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_REGISTER_WRITE) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), reg) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), val) ||
      elantech_ps2_command(psmouse, ((void*)0), PSMOUSE_CMD_SETSCALE11)) {
   rc = -1;
  }
  break;

 case 3:
  if (elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_REGISTER_READWRITE) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), reg) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), val) ||
      elantech_ps2_command(psmouse, ((void*)0), PSMOUSE_CMD_SETSCALE11)) {
   rc = -1;
  }
  break;

 case 4:
  if (elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_REGISTER_READWRITE) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), reg) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_REGISTER_READWRITE) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), val) ||
      elantech_ps2_command(psmouse, ((void*)0), PSMOUSE_CMD_SETSCALE11)) {
   rc = -1;
  }
  break;
 }

 if (rc)
  psmouse_err(psmouse,
       "failed to write register 0x%02x with value 0x%02x.\n",
       reg, val);

 return rc;
}
