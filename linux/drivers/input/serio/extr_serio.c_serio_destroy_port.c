
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dev; int node; int * parent; int child_node; int (* stop ) (struct serio*) ;} ;


 int device_del (int *) ;
 scalar_t__ device_is_registered (int *) ;
 int list_del_init (int *) ;
 int put_device (int *) ;
 int serio_continue_rx (int *) ;
 struct serio* serio_get_pending_child (struct serio*) ;
 int serio_pause_rx (int *) ;
 int serio_remove_pending_events (struct serio*) ;
 int stub1 (struct serio*) ;

__attribute__((used)) static void serio_destroy_port(struct serio *serio)
{
 struct serio *child;

 while ((child = serio_get_pending_child(serio)) != ((void*)0)) {
  serio_remove_pending_events(child);
  put_device(&child->dev);
 }

 if (serio->stop)
  serio->stop(serio);

 if (serio->parent) {
  serio_pause_rx(serio->parent);
  list_del_init(&serio->child_node);
  serio_continue_rx(serio->parent);
  serio->parent = ((void*)0);
 }

 if (device_is_registered(&serio->dev))
  device_del(&serio->dev);

 list_del_init(&serio->node);
 serio_remove_pending_events(serio);
 put_device(&serio->dev);
}
