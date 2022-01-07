
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct gameport_event {int type; int object; } ;




 int gameport_add_port (int ) ;
 int gameport_attach_driver (int ) ;
 int gameport_free_event (struct gameport_event*) ;
 struct gameport_event* gameport_get_event () ;
 int gameport_mutex ;
 int gameport_remove_duplicate_events (struct gameport_event*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gameport_handle_events(struct work_struct *work)
{
 struct gameport_event *event;

 mutex_lock(&gameport_mutex);







 if ((event = gameport_get_event())) {

  switch (event->type) {

  case 128:
   gameport_add_port(event->object);
   break;

  case 129:
   gameport_attach_driver(event->object);
   break;
  }

  gameport_remove_duplicate_events(event);
  gameport_free_event(event);
 }

 mutex_unlock(&gameport_mutex);
}
