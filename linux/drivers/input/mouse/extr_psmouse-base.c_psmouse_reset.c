
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct psmouse {int ps2dev; } ;


 int EIO ;
 int PSMOUSE_CMD_RESET_BAT ;
 scalar_t__ PSMOUSE_RET_BAT ;
 scalar_t__ PSMOUSE_RET_ID ;
 int ps2_command (int *,scalar_t__*,int ) ;

int psmouse_reset(struct psmouse *psmouse)
{
 u8 param[2];
 int error;

 error = ps2_command(&psmouse->ps2dev, param, PSMOUSE_CMD_RESET_BAT);
 if (error)
  return error;

 if (param[0] != PSMOUSE_RET_BAT && param[1] != PSMOUSE_RET_ID)
  return -EIO;

 return 0;
}
