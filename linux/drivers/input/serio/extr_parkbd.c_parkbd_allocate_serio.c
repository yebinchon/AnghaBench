
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct serio {int phys; int name; int write; TYPE_1__ id; } ;
struct TYPE_6__ {TYPE_2__* port; } ;
struct TYPE_5__ {char* name; } ;


 int GFP_KERNEL ;
 struct serio* kzalloc (int,int ) ;
 TYPE_3__* parkbd_dev ;
 int parkbd_mode ;
 int parkbd_write ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static struct serio *parkbd_allocate_serio(void)
{
 struct serio *serio;

 serio = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (serio) {
  serio->id.type = parkbd_mode;
  serio->write = parkbd_write,
  strlcpy(serio->name, "PARKBD AT/XT keyboard adapter", sizeof(serio->name));
  snprintf(serio->phys, sizeof(serio->phys), "%s/serio0", parkbd_dev->port->name);
 }

 return serio;
}
