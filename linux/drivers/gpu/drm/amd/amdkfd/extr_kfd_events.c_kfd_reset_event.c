
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kfd_process {int event_mutex; } ;
struct kfd_event {int dummy; } ;


 int EINVAL ;
 scalar_t__ event_can_be_cpu_signaled (struct kfd_event*) ;
 struct kfd_event* lookup_event_by_id (struct kfd_process*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_event (struct kfd_event*) ;

int kfd_reset_event(struct kfd_process *p, uint32_t event_id)
{
 int ret = 0;
 struct kfd_event *ev;

 mutex_lock(&p->event_mutex);

 ev = lookup_event_by_id(p, event_id);

 if (ev && event_can_be_cpu_signaled(ev))
  reset_event(ev);
 else
  ret = -EINVAL;

 mutex_unlock(&p->event_mutex);
 return ret;

}
