
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psmouse {int ps2dev; } ;


 int PSMOUSE_CMD_POLL ;
 int ps2_command (int *,int *,int) ;
 int ps2_sliced_command (int *,int ) ;

__attribute__((used)) static int ps2pp_cmd(struct psmouse *psmouse, u8 *param, u8 command)
{
 int error;

 error = ps2_sliced_command(&psmouse->ps2dev, command);
 if (error)
  return error;

 error = ps2_command(&psmouse->ps2dev, param, PSMOUSE_CMD_POLL | 0x0300);
 if (error)
  return error;

 return 0;
}
