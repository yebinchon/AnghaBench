
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdei_event {scalar_t__ type; int event_num; scalar_t__ reenable; } ;


 scalar_t__ SDEI_EVENT_TYPE_SHARED ;
 int _local_event_enable ;
 int _sdei_event_register (struct sdei_event*) ;
 int lockdep_assert_held (int *) ;
 int pr_err (char*,int ) ;
 int sdei_api_event_enable (int ) ;
 int sdei_do_cross_call (int ,struct sdei_event*) ;
 int sdei_event_destroy (struct sdei_event*) ;
 int sdei_events_lock ;

__attribute__((used)) static int sdei_reregister_event(struct sdei_event *event)
{
 int err;

 lockdep_assert_held(&sdei_events_lock);

 err = _sdei_event_register(event);
 if (err) {
  pr_err("Failed to re-register event %u\n", event->event_num);
  sdei_event_destroy(event);
  return err;
 }

 if (event->reenable) {
  if (event->type == SDEI_EVENT_TYPE_SHARED)
   err = sdei_api_event_enable(event->event_num);
  else
   err = sdei_do_cross_call(_local_event_enable, event);
 }

 if (err)
  pr_err("Failed to re-enable event %u\n", event->event_num);

 return err;
}
