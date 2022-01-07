
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct devx_async_event_file* private_data; } ;
struct devx_async_event_file {int lock; int event_list; scalar_t__ is_destroyed; int poll_wait; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t devx_async_event_poll(struct file *filp,
          struct poll_table_struct *wait)
{
 struct devx_async_event_file *ev_file = filp->private_data;
 __poll_t pollflags = 0;

 poll_wait(filp, &ev_file->poll_wait, wait);

 spin_lock_irq(&ev_file->lock);
 if (ev_file->is_destroyed)
  pollflags = EPOLLIN | EPOLLRDNORM | EPOLLRDHUP;
 else if (!list_empty(&ev_file->event_list))
  pollflags = EPOLLIN | EPOLLRDNORM;
 spin_unlock_irq(&ev_file->lock);

 return pollflags;
}
