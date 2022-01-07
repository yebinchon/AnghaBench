
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdei_event {scalar_t__ type; int private_registered; struct sdei_event* registered; int list; } ;


 scalar_t__ SDEI_EVENT_TYPE_SHARED ;
 int free_percpu (int ) ;
 int kfree (struct sdei_event*) ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;
 int sdei_events_lock ;
 int sdei_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sdei_event_destroy(struct sdei_event *event)
{
 lockdep_assert_held(&sdei_events_lock);

 spin_lock(&sdei_list_lock);
 list_del(&event->list);
 spin_unlock(&sdei_list_lock);

 if (event->type == SDEI_EVENT_TYPE_SHARED)
  kfree(event->registered);
 else
  free_percpu(event->private_registered);

 kfree(event);
}
