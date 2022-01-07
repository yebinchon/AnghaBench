
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct ib_uverbs_event_queue {int lock; int event_list; int poll_wait; } ;
struct file {int dummy; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t ib_uverbs_event_poll(struct ib_uverbs_event_queue *ev_queue,
      struct file *filp,
      struct poll_table_struct *wait)
{
 __poll_t pollflags = 0;

 poll_wait(filp, &ev_queue->poll_wait, wait);

 spin_lock_irq(&ev_queue->lock);
 if (!list_empty(&ev_queue->event_list))
  pollflags = EPOLLIN | EPOLLRDNORM;
 spin_unlock_irq(&ev_queue->lock);

 return pollflags;
}
