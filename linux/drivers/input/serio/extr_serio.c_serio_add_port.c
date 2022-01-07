
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int name; int phys; int dev; int (* start ) (struct serio*) ;int node; int children; int child_node; struct serio* parent; } ;


 int dev_err (int *,char*,int ,int ,int) ;
 int device_add (int *) ;
 int list_add_tail (int *,int *) ;
 int serio_continue_rx (struct serio*) ;
 int serio_list ;
 int serio_pause_rx (struct serio*) ;
 int stub1 (struct serio*) ;

__attribute__((used)) static void serio_add_port(struct serio *serio)
{
 struct serio *parent = serio->parent;
 int error;

 if (parent) {
  serio_pause_rx(parent);
  list_add_tail(&serio->child_node, &parent->children);
  serio_continue_rx(parent);
 }

 list_add_tail(&serio->node, &serio_list);

 if (serio->start)
  serio->start(serio);

 error = device_add(&serio->dev);
 if (error)
  dev_err(&serio->dev,
   "device_add() failed for %s (%s), error: %d\n",
   serio->phys, serio->name, error);
}
