
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* serio; } ;
struct psmouse {int * private; TYPE_2__ ps2dev; } ;
struct TYPE_3__ {int dev; } ;


 int device_remove_group (int *,int *) ;
 int kfree (int *) ;
 int trackpoint_attr_group ;

__attribute__((used)) static void trackpoint_disconnect(struct psmouse *psmouse)
{
 device_remove_group(&psmouse->ps2dev.serio->dev,
       &trackpoint_attr_group);

 kfree(psmouse->private);
 psmouse->private = ((void*)0);
}
