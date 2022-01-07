
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {TYPE_1__* drv; } ;
struct rmi_function {int dev; } ;
struct f03_data {int overwrite_buttons; struct serio* serio; } ;
struct TYPE_2__ {int (* interrupt ) (struct serio*,int ,int ) ;} ;


 int PSMOUSE_OOB_EXTRA_BTNS ;
 int SERIO_OOB_DATA ;
 struct f03_data* dev_get_drvdata (int *) ;
 int serio_continue_rx (struct serio*) ;
 int serio_pause_rx (struct serio*) ;
 int stub1 (struct serio*,int ,int ) ;
 int stub2 (struct serio*,int ,int ) ;

void rmi_f03_commit_buttons(struct rmi_function *fn)
{
 struct f03_data *f03 = dev_get_drvdata(&fn->dev);
 struct serio *serio = f03->serio;

 serio_pause_rx(serio);
 if (serio->drv) {
  serio->drv->interrupt(serio, PSMOUSE_OOB_EXTRA_BTNS,
          SERIO_OOB_DATA);
  serio->drv->interrupt(serio, f03->overwrite_buttons,
          SERIO_OOB_DATA);
 }
 serio_continue_rx(serio);
}
