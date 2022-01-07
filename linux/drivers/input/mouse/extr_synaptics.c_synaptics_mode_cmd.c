
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psmouse {int ps2dev; } ;


 int PSMOUSE_CMD_SETRATE ;
 int SYN_PS_SET_MODE2 ;
 int ps2_command (int *,int *,int ) ;
 int ps2_sliced_command (int *,int ) ;

__attribute__((used)) static int synaptics_mode_cmd(struct psmouse *psmouse, u8 mode)
{
 u8 param[1];
 int error;

 error = ps2_sliced_command(&psmouse->ps2dev, mode);
 if (error)
  return error;

 param[0] = SYN_PS_SET_MODE2;
 error = ps2_command(&psmouse->ps2dev, param, PSMOUSE_CMD_SETRATE);
 if (error)
  return error;

 return 0;
}
