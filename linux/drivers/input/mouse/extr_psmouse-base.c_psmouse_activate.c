
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* serio; } ;
struct psmouse {TYPE_2__ ps2dev; } ;
struct TYPE_3__ {int phys; } ;


 int PSMOUSE_ACTIVATED ;
 int PSMOUSE_CMD_ENABLE ;
 scalar_t__ ps2_command (TYPE_2__*,int *,int ) ;
 int psmouse_set_state (struct psmouse*,int ) ;
 int psmouse_warn (struct psmouse*,char*,int ) ;

int psmouse_activate(struct psmouse *psmouse)
{
 if (ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE)) {
  psmouse_warn(psmouse, "Failed to enable mouse on %s\n",
        psmouse->ps2dev.serio->phys);
  return -1;
 }

 psmouse_set_state(psmouse, PSMOUSE_ACTIVATED);
 return 0;
}
