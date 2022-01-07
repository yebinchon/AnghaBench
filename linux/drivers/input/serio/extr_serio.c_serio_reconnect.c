
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int SERIO_RECONNECT_SUBTREE ;
 int serio_queue_event (struct serio*,int *,int ) ;

void serio_reconnect(struct serio *serio)
{
 serio_queue_event(serio, ((void*)0), SERIO_RECONNECT_SUBTREE);
}
