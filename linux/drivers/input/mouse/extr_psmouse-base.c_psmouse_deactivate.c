
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* serio; } ;
struct psmouse {TYPE_2__ ps2dev; } ;
struct TYPE_3__ {int phys; } ;


 int PSMOUSE_CMD_DISABLE ;
 int PSMOUSE_CMD_MODE ;
 int ps2_command (TYPE_2__*,int *,int ) ;
 int psmouse_set_state (struct psmouse*,int ) ;
 int psmouse_warn (struct psmouse*,char*,int ,int) ;

int psmouse_deactivate(struct psmouse *psmouse)
{
 int error;

 error = ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE);
 if (error) {
  psmouse_warn(psmouse, "Failed to deactivate mouse on %s: %d\n",
        psmouse->ps2dev.serio->phys, error);
  return error;
 }

 psmouse_set_state(psmouse, PSMOUSE_CMD_MODE);
 return 0;
}
