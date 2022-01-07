
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_SETSTREAM ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int ) ;

__attribute__((used)) static inline int alps_exit_command_mode(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSTREAM))
  return -1;
 return 0;
}
