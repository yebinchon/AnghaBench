
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct devx_async_cmd_event_file* private_data; } ;
struct devx_async_event_queue {int lock; int event_list; scalar_t__ is_destroyed; int poll_wait; } ;
struct devx_async_cmd_event_file {struct devx_async_event_queue ev_queue; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t devx_async_cmd_event_poll(struct file *filp,
           struct poll_table_struct *wait)
{
 struct devx_async_cmd_event_file *comp_ev_file = filp->private_data;
 struct devx_async_event_queue *ev_queue = &comp_ev_file->ev_queue;
 __poll_t pollflags = 0;

 poll_wait(filp, &ev_queue->poll_wait, wait);

 spin_lock_irq(&ev_queue->lock);
 if (ev_queue->is_destroyed)
  pollflags = EPOLLIN | EPOLLRDNORM | EPOLLRDHUP;
 else if (!list_empty(&ev_queue->event_list))
  pollflags = EPOLLIN | EPOLLRDNORM;
 spin_unlock_irq(&ev_queue->lock);

 return pollflags;
}
