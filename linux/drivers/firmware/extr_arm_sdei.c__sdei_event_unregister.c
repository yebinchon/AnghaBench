
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdei_event {int reregister; int reenable; scalar_t__ type; int event_num; } ;


 scalar_t__ SDEI_EVENT_TYPE_SHARED ;
 int _local_event_unregister ;
 int lockdep_assert_held (int *) ;
 int sdei_api_event_unregister (int ) ;
 int sdei_do_cross_call (int ,struct sdei_event*) ;
 int sdei_events_lock ;
 int sdei_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int _sdei_event_unregister(struct sdei_event *event)
{
 lockdep_assert_held(&sdei_events_lock);

 spin_lock(&sdei_list_lock);
 event->reregister = 0;
 event->reenable = 0;
 spin_unlock(&sdei_list_lock);

 if (event->type == SDEI_EVENT_TYPE_SHARED)
  return sdei_api_event_unregister(event->event_num);

 return sdei_do_cross_call(_local_event_unregister, event);
}
