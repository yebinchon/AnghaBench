
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* serio; } ;
struct psmouse {scalar_t__ model; TYPE_2__ ps2dev; struct hgpk_data* private; } ;
struct hgpk_data {int dummy; } ;
struct TYPE_10__ {int dattr; } ;
struct TYPE_9__ {int dattr; } ;
struct TYPE_8__ {int dattr; } ;
struct TYPE_6__ {int dev; } ;


 scalar_t__ HGPK_MODEL_C ;
 int device_remove_file (int *,int *) ;
 int kfree (struct hgpk_data*) ;
 TYPE_5__ psmouse_attr_hgpk_mode ;
 TYPE_4__ psmouse_attr_powered ;
 TYPE_3__ psmouse_attr_recalibrate ;
 int psmouse_reset (struct psmouse*) ;

__attribute__((used)) static void hgpk_disconnect(struct psmouse *psmouse)
{
 struct hgpk_data *priv = psmouse->private;

 device_remove_file(&psmouse->ps2dev.serio->dev,
      &psmouse_attr_powered.dattr);
 device_remove_file(&psmouse->ps2dev.serio->dev,
      &psmouse_attr_hgpk_mode.dattr);

 if (psmouse->model >= HGPK_MODEL_C)
  device_remove_file(&psmouse->ps2dev.serio->dev,
       &psmouse_attr_recalibrate.dattr);

 psmouse_reset(psmouse);
 kfree(priv);
}
