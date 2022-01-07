
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int kobj; } ;
struct serio {struct serio* parent; TYPE_2__ id; TYPE_1__ dev; } ;
struct psmouse {scalar_t__ dev; int (* pt_deactivate ) (struct psmouse*) ;int (* disconnect ) (struct psmouse*) ;} ;


 int PSMOUSE_CMD_MODE ;
 int PSMOUSE_IGNORE ;
 scalar_t__ SERIO_PS_PSTHRU ;
 int flush_workqueue (int ) ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct psmouse*) ;
 int kpsmoused_wq ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int psmouse_activate (struct psmouse*) ;
 int psmouse_attribute_group ;
 int psmouse_deactivate (struct psmouse*) ;
 int psmouse_mutex ;
 int psmouse_set_state (struct psmouse*,int ) ;
 int serio_close (struct serio*) ;
 struct psmouse* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;
 int stub1 (struct psmouse*) ;
 int stub2 (struct psmouse*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void psmouse_disconnect(struct serio *serio)
{
 struct psmouse *psmouse = serio_get_drvdata(serio);
 struct psmouse *parent = ((void*)0);

 sysfs_remove_group(&serio->dev.kobj, &psmouse_attribute_group);

 mutex_lock(&psmouse_mutex);

 psmouse_set_state(psmouse, PSMOUSE_CMD_MODE);


 mutex_unlock(&psmouse_mutex);
 flush_workqueue(kpsmoused_wq);
 mutex_lock(&psmouse_mutex);

 if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
  parent = serio_get_drvdata(serio->parent);
  psmouse_deactivate(parent);
 }

 if (psmouse->disconnect)
  psmouse->disconnect(psmouse);

 if (parent && parent->pt_deactivate)
  parent->pt_deactivate(parent);

 psmouse_set_state(psmouse, PSMOUSE_IGNORE);

 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));

 if (psmouse->dev)
  input_unregister_device(psmouse->dev);

 kfree(psmouse);

 if (parent)
  psmouse_activate(parent);

 mutex_unlock(&psmouse_mutex);
}
