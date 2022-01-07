
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdei_event {int dummy; } ;


 int ENOENT ;
 int WARN_ON (int ) ;
 int _sdei_event_unregister (struct sdei_event*) ;
 int in_nmi () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int ) ;
 int sdei_event_destroy (struct sdei_event*) ;
 struct sdei_event* sdei_event_find (int ) ;
 int sdei_events_lock ;

int sdei_event_unregister(u32 event_num)
{
 int err;
 struct sdei_event *event;

 WARN_ON(in_nmi());

 mutex_lock(&sdei_events_lock);
 event = sdei_event_find(event_num);
 do {
  if (!event) {
   pr_warn("Event %u not registered\n", event_num);
   err = -ENOENT;
   break;
  }

  err = _sdei_event_unregister(event);
  if (err)
   break;

  sdei_event_destroy(event);
 } while (0);
 mutex_unlock(&sdei_events_lock);

 return err;
}
