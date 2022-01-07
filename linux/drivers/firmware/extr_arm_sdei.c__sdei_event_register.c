
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdei_event {int reregister; scalar_t__ type; int reenable; int registered; int event_num; } ;


 int SDEI_EVENT_REGISTER_RM_ANY ;
 scalar_t__ SDEI_EVENT_TYPE_SHARED ;
 int _local_event_register ;
 int _local_event_unregister ;
 int lockdep_assert_held (int *) ;
 int sdei_api_event_register (int ,int ,int ,int ,int ) ;
 int sdei_do_cross_call (int ,struct sdei_event*) ;
 int sdei_entry_point ;
 int sdei_events_lock ;
 int sdei_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int _sdei_event_register(struct sdei_event *event)
{
 int err;

 lockdep_assert_held(&sdei_events_lock);

 spin_lock(&sdei_list_lock);
 event->reregister = 1;
 spin_unlock(&sdei_list_lock);

 if (event->type == SDEI_EVENT_TYPE_SHARED)
  return sdei_api_event_register(event->event_num,
            sdei_entry_point,
            event->registered,
            SDEI_EVENT_REGISTER_RM_ANY, 0);


 err = sdei_do_cross_call(_local_event_register, event);
 if (err) {
  spin_lock(&sdei_list_lock);
  event->reregister = 0;
  event->reenable = 0;
  spin_unlock(&sdei_list_lock);

  sdei_do_cross_call(_local_event_unregister, event);
 }

 return err;
}
