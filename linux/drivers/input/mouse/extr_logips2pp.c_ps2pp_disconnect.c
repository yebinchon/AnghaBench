
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* serio; } ;
struct psmouse {TYPE_2__ ps2dev; } ;
struct TYPE_6__ {int dattr; } ;
struct TYPE_4__ {int dev; } ;


 int device_remove_file (int *,int *) ;
 TYPE_3__ psmouse_attr_smartscroll ;

__attribute__((used)) static void ps2pp_disconnect(struct psmouse *psmouse)
{
 device_remove_file(&psmouse->ps2dev.serio->dev,
      &psmouse_attr_smartscroll.dattr);
}
