
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {scalar_t__ signal_event_count; int * signal_page; int event_idr; int event_mutex; } ;


 int idr_init (int *) ;
 int mutex_init (int *) ;

void kfd_event_init_process(struct kfd_process *p)
{
 mutex_init(&p->event_mutex);
 idr_init(&p->event_idr);
 p->signal_page = ((void*)0);
 p->signal_event_count = 0;
}
