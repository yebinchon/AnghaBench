
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct psmouse_protocol {scalar_t__ (* detect ) (struct psmouse*,int) ;scalar_t__ (* init ) (struct psmouse*) ;char* name; int type; } ;
struct TYPE_7__ {TYPE_2__* serio; } ;
struct psmouse {int pktsize; char* vendor; char* name; int model; struct psmouse_protocol const* protocol; int phys; int devname; scalar_t__ resync_time; scalar_t__ (* poll ) (struct psmouse*) ;TYPE_3__ ps2dev; struct input_dev* dev; } ;
struct TYPE_8__ {int vendor; int version; int product; int bustype; } ;
struct TYPE_5__ {int * parent; } ;
struct input_dev {TYPE_4__ id; int phys; int name; TYPE_1__ dev; } ;
typedef enum psmouse_type { ____Placeholder_psmouse_type } psmouse_type ;
struct TYPE_6__ {int dev; } ;


 int BUS_I8042 ;
 int psmouse_apply_defaults (struct psmouse*) ;
 int psmouse_extensions (struct psmouse*,int ,int) ;
 int psmouse_max_proto ;
 struct psmouse_protocol* psmouse_protocol_by_type (int) ;
 int snprintf (int ,int,char*,char*,char*,char*) ;
 scalar_t__ stub1 (struct psmouse*,int) ;
 scalar_t__ stub2 (struct psmouse*) ;
 scalar_t__ stub3 (struct psmouse*) ;

__attribute__((used)) static int psmouse_switch_protocol(struct psmouse *psmouse,
       const struct psmouse_protocol *proto)
{
 const struct psmouse_protocol *selected_proto;
 struct input_dev *input_dev = psmouse->dev;
 enum psmouse_type type;

 input_dev->dev.parent = &psmouse->ps2dev.serio->dev;

 if (proto && (proto->detect || proto->init)) {
  psmouse_apply_defaults(psmouse);

  if (proto->detect && proto->detect(psmouse, 1) < 0)
   return -1;

  if (proto->init && proto->init(psmouse) < 0)
   return -1;

  selected_proto = proto;
 } else {
  type = psmouse_extensions(psmouse, psmouse_max_proto, 1);
  selected_proto = psmouse_protocol_by_type(type);
 }

 psmouse->protocol = selected_proto;






 if (psmouse->pktsize == 3)
  psmouse->resync_time = 0;







 if (psmouse->resync_time && psmouse->poll(psmouse))
  psmouse->resync_time = 0;

 snprintf(psmouse->devname, sizeof(psmouse->devname), "%s %s %s",
   selected_proto->name, psmouse->vendor, psmouse->name);

 input_dev->name = psmouse->devname;
 input_dev->phys = psmouse->phys;
 input_dev->id.bustype = BUS_I8042;
 input_dev->id.vendor = 0x0002;
 input_dev->id.product = psmouse->protocol->type;
 input_dev->id.version = psmouse->model;

 return 0;
}
