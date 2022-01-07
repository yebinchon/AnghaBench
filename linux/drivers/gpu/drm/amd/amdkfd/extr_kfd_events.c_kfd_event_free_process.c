
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int dummy; } ;


 int destroy_events (struct kfd_process*) ;
 int shutdown_signal_page (struct kfd_process*) ;

void kfd_event_free_process(struct kfd_process *p)
{
 destroy_events(p);
 shutdown_signal_page(p);
}
