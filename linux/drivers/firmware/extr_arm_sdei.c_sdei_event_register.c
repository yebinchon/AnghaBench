
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdei_event {int dummy; } ;
typedef int sdei_event_callback ;


 int EBUSY ;
 scalar_t__ IS_ERR (struct sdei_event*) ;
 int PTR_ERR (struct sdei_event*) ;
 int WARN_ON (int ) ;
 int _sdei_event_register (struct sdei_event*) ;
 int in_nmi () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int ,...) ;
 struct sdei_event* sdei_event_create (int ,int *,void*) ;
 int sdei_event_destroy (struct sdei_event*) ;
 scalar_t__ sdei_event_find (int ) ;
 int sdei_events_lock ;

int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
{
 int err;
 struct sdei_event *event;

 WARN_ON(in_nmi());

 mutex_lock(&sdei_events_lock);
 do {
  if (sdei_event_find(event_num)) {
   pr_warn("Event %u already registered\n", event_num);
   err = -EBUSY;
   break;
  }

  event = sdei_event_create(event_num, cb, arg);
  if (IS_ERR(event)) {
   err = PTR_ERR(event);
   pr_warn("Failed to create event %u: %d\n", event_num,
    err);
   break;
  }

  err = _sdei_event_register(event);
  if (err) {
   sdei_event_destroy(event);
   pr_warn("Failed to register event %u: %d\n", event_num,
    err);
  }
 } while (0);
 mutex_unlock(&sdei_events_lock);

 return err;
}
