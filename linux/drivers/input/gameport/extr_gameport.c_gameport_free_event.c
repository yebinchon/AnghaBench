
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport_event {int owner; } ;


 int kfree (struct gameport_event*) ;
 int module_put (int ) ;

__attribute__((used)) static void gameport_free_event(struct gameport_event *event)
{
 module_put(event->owner);
 kfree(event);
}
