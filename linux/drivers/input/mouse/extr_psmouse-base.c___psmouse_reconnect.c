
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct serio {struct serio* parent; TYPE_1__ id; } ;
struct psmouse {int (* fast_reconnect ) (struct psmouse*) ;int (* reconnect ) (struct psmouse*) ;TYPE_2__* protocol; int (* pt_activate ) (struct psmouse*) ;} ;
typedef enum psmouse_type { ____Placeholder_psmouse_type } psmouse_type ;
struct TYPE_4__ {int type; int smbus_companion; } ;


 int ENOENT ;
 int PSMOUSE_CMD_MODE ;
 int PSMOUSE_INITIALIZING ;
 scalar_t__ SERIO_PS_PSTHRU ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int psmouse_activate (struct psmouse*) ;
 int psmouse_deactivate (struct psmouse*) ;
 int psmouse_extensions (struct psmouse*,int ,int) ;
 int psmouse_initialize (struct psmouse*) ;
 int psmouse_max_proto ;
 int psmouse_mutex ;
 scalar_t__ psmouse_probe (struct psmouse*) ;
 int psmouse_reset (struct psmouse*) ;
 int psmouse_set_state (struct psmouse*,int ) ;
 struct psmouse* serio_get_drvdata (struct serio*) ;
 int stub1 (struct psmouse*) ;

__attribute__((used)) static int __psmouse_reconnect(struct serio *serio, bool fast_reconnect)
{
 struct psmouse *psmouse = serio_get_drvdata(serio);
 struct psmouse *parent = ((void*)0);
 int (*reconnect_handler)(struct psmouse *);
 enum psmouse_type type;
 int rc = -1;

 mutex_lock(&psmouse_mutex);

 if (fast_reconnect) {
  reconnect_handler = psmouse->fast_reconnect;
  if (!reconnect_handler) {
   rc = -ENOENT;
   goto out_unlock;
  }
 } else {
  reconnect_handler = psmouse->reconnect;
 }

 if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
  parent = serio_get_drvdata(serio->parent);
  psmouse_deactivate(parent);
 }

 psmouse_set_state(psmouse, PSMOUSE_INITIALIZING);

 if (reconnect_handler) {
  if (reconnect_handler(psmouse))
   goto out;
 } else {
  psmouse_reset(psmouse);

  if (psmouse_probe(psmouse) < 0)
   goto out;

  type = psmouse_extensions(psmouse, psmouse_max_proto, 0);
  if (psmouse->protocol->type != type)
   goto out;
 }





 if (!psmouse->protocol->smbus_companion) {
  psmouse_set_state(psmouse, PSMOUSE_CMD_MODE);
  psmouse_initialize(psmouse);
 }

 if (parent && parent->pt_activate)
  parent->pt_activate(parent);





 if (!psmouse->protocol->smbus_companion)
  psmouse_activate(psmouse);

 rc = 0;

out:

 if (parent)
  psmouse_activate(parent);

out_unlock:
 mutex_unlock(&psmouse_mutex);
 return rc;
}
