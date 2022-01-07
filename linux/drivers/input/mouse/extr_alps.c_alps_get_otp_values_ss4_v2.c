
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_GETINFO ;
 int PSMOUSE_CMD_SETPOLL ;
 int PSMOUSE_CMD_SETSTREAM ;
 int ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static int alps_get_otp_values_ss4_v2(struct psmouse *psmouse,
          unsigned char index, unsigned char otp[])
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;

 switch (index) {
 case 0:
  if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSTREAM) ||
      ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSTREAM) ||
      ps2_command(ps2dev, otp, PSMOUSE_CMD_GETINFO))
   return -1;

  break;

 case 1:
  if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETPOLL) ||
      ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETPOLL) ||
      ps2_command(ps2dev, otp, PSMOUSE_CMD_GETINFO))
   return -1;

  break;
 }

 return 0;
}
