
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct serio {struct serio* parent; TYPE_1__ id; } ;
struct TYPE_6__ {TYPE_2__* serio; } ;
struct psmouse {int (* pt_deactivate ) (struct psmouse*) ;TYPE_3__ ps2dev; int (* cleanup ) (struct psmouse*) ;} ;
struct TYPE_5__ {int phys; } ;


 int PSMOUSE_CMD_DISABLE ;
 int PSMOUSE_CMD_ENABLE ;
 int PSMOUSE_CMD_RESET_DIS ;
 int PSMOUSE_INITIALIZING ;
 scalar_t__ SERIO_PS_PSTHRU ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ps2_command (TYPE_3__*,int *,int ) ;
 int psmouse_activate (struct psmouse*) ;
 int psmouse_deactivate (struct psmouse*) ;
 int psmouse_mutex ;
 int psmouse_set_state (struct psmouse*,int ) ;
 int psmouse_warn (struct psmouse*,char*,int ) ;
 struct psmouse* serio_get_drvdata (struct serio*) ;
 int stub1 (struct psmouse*) ;
 int stub2 (struct psmouse*) ;

__attribute__((used)) static void psmouse_cleanup(struct serio *serio)
{
 struct psmouse *psmouse = serio_get_drvdata(serio);
 struct psmouse *parent = ((void*)0);

 mutex_lock(&psmouse_mutex);

 if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
  parent = serio_get_drvdata(serio->parent);
  psmouse_deactivate(parent);
 }

 psmouse_set_state(psmouse, PSMOUSE_INITIALIZING);




 if (ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE))
  psmouse_warn(psmouse, "Failed to disable mouse on %s\n",
        psmouse->ps2dev.serio->phys);

 if (psmouse->cleanup)
  psmouse->cleanup(psmouse);




 ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_RESET_DIS);





 ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE);

 if (parent) {
  if (parent->pt_deactivate)
   parent->pt_deactivate(parent);

  psmouse_activate(parent);
 }

 mutex_unlock(&psmouse_mutex);
}
