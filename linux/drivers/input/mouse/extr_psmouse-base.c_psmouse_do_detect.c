
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* serio; } ;
struct psmouse {TYPE_3__ ps2dev; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ id; } ;


 scalar_t__ SERIO_PS_PSTHRU ;
 int psmouse_apply_defaults (struct psmouse*) ;

__attribute__((used)) static bool psmouse_do_detect(int (*detect)(struct psmouse *, bool),
         struct psmouse *psmouse, bool allow_passthrough,
         bool set_properties)
{
 if (psmouse->ps2dev.serio->id.type == SERIO_PS_PSTHRU &&
     !allow_passthrough) {
  return 0;
 }

 if (set_properties)
  psmouse_apply_defaults(psmouse);

 return detect(psmouse, set_properties) == 0;
}
