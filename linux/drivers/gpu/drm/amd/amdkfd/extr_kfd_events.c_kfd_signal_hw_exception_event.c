
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int event_mutex; } ;


 int KFD_EVENT_TYPE_HW_EXCEPTION ;
 struct kfd_process* kfd_lookup_process_by_pasid (unsigned int) ;
 int kfd_unref_process (struct kfd_process*) ;
 int lookup_events_by_type_and_signal (struct kfd_process*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kfd_signal_hw_exception_event(unsigned int pasid)
{





 struct kfd_process *p = kfd_lookup_process_by_pasid(pasid);

 if (!p)
  return;

 mutex_lock(&p->event_mutex);


 lookup_events_by_type_and_signal(p, KFD_EVENT_TYPE_HW_EXCEPTION, ((void*)0));

 mutex_unlock(&p->event_mutex);
 kfd_unref_process(p);
}
