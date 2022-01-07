
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_process {int signal_mapped_size; int signal_event_count; int signal_event_limit_reached; TYPE_1__* signal_page; } ;
struct kfd_event {size_t event_id; int * user_signal_address; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int * user_address; } ;


 int ENOSPC ;
 int allocate_event_notification_slot (struct kfd_process*,struct kfd_event*) ;
 int pr_debug (char*,int,size_t,int *) ;
 int pr_warn (char*) ;

__attribute__((used)) static int create_signal_event(struct file *devkfd,
    struct kfd_process *p,
    struct kfd_event *ev)
{
 int ret;

 if (p->signal_mapped_size &&
     p->signal_event_count == p->signal_mapped_size / 8) {
  if (!p->signal_event_limit_reached) {
   pr_warn("Signal event wasn't created because limit was reached\n");
   p->signal_event_limit_reached = 1;
  }
  return -ENOSPC;
 }

 ret = allocate_event_notification_slot(p, ev);
 if (ret) {
  pr_warn("Signal event wasn't created because out of kernel memory\n");
  return ret;
 }

 p->signal_event_count++;

 ev->user_signal_address = &p->signal_page->user_address[ev->event_id];
 pr_debug("Signal event number %zu created with id %d, address %p\n",
   p->signal_event_count, ev->event_id,
   ev->user_signal_address);

 return 0;
}
