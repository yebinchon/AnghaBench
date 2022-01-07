
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* serio; } ;
struct psmouse {int private; TYPE_3__ ps2dev; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int fsp_attribute_group ;
 int fsp_reset (struct psmouse*) ;
 int kfree (int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void fsp_disconnect(struct psmouse *psmouse)
{
 sysfs_remove_group(&psmouse->ps2dev.serio->dev.kobj,
      &fsp_attribute_group);

 fsp_reset(psmouse);
 kfree(psmouse->private);
}
