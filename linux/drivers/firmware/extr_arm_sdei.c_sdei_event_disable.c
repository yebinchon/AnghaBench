
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdei_event {int reenable; scalar_t__ type; int event_num; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ SDEI_EVENT_TYPE_SHARED ;
 int _ipi_event_disable ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdei_api_event_disable (int ) ;
 int sdei_do_cross_call (int ,struct sdei_event*) ;
 struct sdei_event* sdei_event_find (int ) ;
 int sdei_events_lock ;
 int sdei_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int sdei_event_disable(u32 event_num)
{
 int err = -EINVAL;
 struct sdei_event *event;

 mutex_lock(&sdei_events_lock);
 event = sdei_event_find(event_num);
 if (!event) {
  mutex_unlock(&sdei_events_lock);
  return -ENOENT;
 }

 spin_lock(&sdei_list_lock);
 event->reenable = 0;
 spin_unlock(&sdei_list_lock);

 if (event->type == SDEI_EVENT_TYPE_SHARED)
  err = sdei_api_event_disable(event->event_num);
 else
  err = sdei_do_cross_call(_ipi_event_disable, event);
 mutex_unlock(&sdei_events_lock);

 return err;
}
