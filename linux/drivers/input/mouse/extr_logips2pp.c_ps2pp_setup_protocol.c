
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* serio; } ;
struct psmouse {int pktsize; TYPE_2__ ps2dev; int disconnect; int set_resolution; int protocol_handler; } ;
struct ps2pp_info {scalar_t__ kind; } ;
struct TYPE_6__ {int dattr; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ PS2PP_KIND_TP3 ;
 int device_create_file (int *,int *) ;
 int ps2pp_disconnect ;
 int ps2pp_process_byte ;
 int ps2pp_set_resolution ;
 TYPE_3__ psmouse_attr_smartscroll ;
 int psmouse_err (struct psmouse*,char*,int) ;

__attribute__((used)) static int ps2pp_setup_protocol(struct psmouse *psmouse,
    const struct ps2pp_info *model_info)
{
 int error;

 psmouse->protocol_handler = ps2pp_process_byte;
 psmouse->pktsize = 3;

 if (model_info->kind != PS2PP_KIND_TP3) {
  psmouse->set_resolution = ps2pp_set_resolution;
  psmouse->disconnect = ps2pp_disconnect;

  error = device_create_file(&psmouse->ps2dev.serio->dev,
        &psmouse_attr_smartscroll.dattr);
  if (error) {
   psmouse_err(psmouse,
        "failed to create smartscroll sysfs attribute, error: %d\n",
        error);
   return error;
  }
 }

 return 0;
}
