
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kfd_process {int event_mutex; } ;
struct kfd_event {int dummy; } ;


 int EINVAL ;
 int destroy_event (struct kfd_process*,struct kfd_event*) ;
 struct kfd_event* lookup_event_by_id (struct kfd_process*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kfd_event_destroy(struct kfd_process *p, uint32_t event_id)
{
 struct kfd_event *ev;
 int ret = 0;

 mutex_lock(&p->event_mutex);

 ev = lookup_event_by_id(p, event_id);

 if (ev)
  destroy_event(p, ev);
 else
  ret = -EINVAL;

 mutex_unlock(&p->event_mutex);
 return ret;
}
