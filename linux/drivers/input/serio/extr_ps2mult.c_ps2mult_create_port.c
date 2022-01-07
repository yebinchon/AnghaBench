
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct serio {char* phys; TYPE_2__* port_data; struct serio* parent; int stop; int start; int write; TYPE_1__ id; int name; } ;
struct ps2mult {TYPE_2__* ports; struct serio* mx_serio; } ;
struct TYPE_4__ {struct serio* serio; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SERIO_8042 ;
 struct serio* kzalloc (int,int ) ;
 int ps2mult_serio_start ;
 int ps2mult_serio_stop ;
 int ps2mult_serio_write ;
 int snprintf (char*,int,char*,char*,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int ps2mult_create_port(struct ps2mult *psm, int i)
{
 struct serio *mx_serio = psm->mx_serio;
 struct serio *serio;

 serio = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (!serio)
  return -ENOMEM;

 strlcpy(serio->name, "TQC PS/2 Multiplexer", sizeof(serio->name));
 snprintf(serio->phys, sizeof(serio->phys),
   "%s/port%d", mx_serio->phys, i);
 serio->id.type = SERIO_8042;
 serio->write = ps2mult_serio_write;
 serio->start = ps2mult_serio_start;
 serio->stop = ps2mult_serio_stop;
 serio->parent = psm->mx_serio;
 serio->port_data = &psm->ports[i];

 psm->ports[i].serio = serio;

 return 0;
}
