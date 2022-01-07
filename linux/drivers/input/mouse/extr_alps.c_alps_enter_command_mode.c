
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int PSMOUSE_CMD_RESET_WRAP ;
 int alps_check_valid_firmware_id (unsigned char*) ;
 scalar_t__ alps_rpt_cmd (struct psmouse*,int ,int ,unsigned char*) ;
 int psmouse_dbg (struct psmouse*,char*) ;
 int psmouse_err (struct psmouse*,char*) ;

__attribute__((used)) static int alps_enter_command_mode(struct psmouse *psmouse)
{
 unsigned char param[4];

 if (alps_rpt_cmd(psmouse, 0, PSMOUSE_CMD_RESET_WRAP, param)) {
  psmouse_err(psmouse, "failed to enter command mode\n");
  return -1;
 }

 if (!alps_check_valid_firmware_id(param)) {
  psmouse_dbg(psmouse,
       "unknown response while entering command mode\n");
  return -1;
 }
 return 0;
}
