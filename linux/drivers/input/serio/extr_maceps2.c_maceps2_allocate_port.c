
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * parent; } ;
struct TYPE_4__ {int type; } ;
struct serio {TYPE_2__ dev; int * port_data; int phys; int name; int close; int open; int write; TYPE_1__ id; } ;
struct TYPE_6__ {int dev; } ;


 int GFP_KERNEL ;
 int SERIO_8042 ;
 struct serio* kzalloc (int,int ) ;
 int maceps2_close ;
 TYPE_3__* maceps2_device ;
 int maceps2_open ;
 int maceps2_write ;
 int * port_data ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static struct serio *maceps2_allocate_port(int idx)
{
 struct serio *serio;

 serio = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (serio) {
  serio->id.type = SERIO_8042;
  serio->write = maceps2_write;
  serio->open = maceps2_open;
  serio->close = maceps2_close;
  snprintf(serio->name, sizeof(serio->name), "MACE PS/2 port%d", idx);
  snprintf(serio->phys, sizeof(serio->phys), "mace/serio%d", idx);
  serio->port_data = &port_data[idx];
  serio->dev.parent = &maceps2_device->dev;
 }

 return serio;
}
