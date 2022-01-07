
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ poll_event; } ;
struct file {struct seq_file* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLPRI ;
 int EPOLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 int md_event_count ;
 int md_event_waiters ;
 scalar_t__ md_unloading ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t mdstat_poll(struct file *filp, poll_table *wait)
{
 struct seq_file *seq = filp->private_data;
 __poll_t mask;

 if (md_unloading)
  return EPOLLIN|EPOLLRDNORM|EPOLLERR|EPOLLPRI;
 poll_wait(filp, &md_event_waiters, wait);


 mask = EPOLLIN | EPOLLRDNORM;

 if (seq->poll_event != atomic_read(&md_event_count))
  mask |= EPOLLERR | EPOLLPRI;
 return mask;
}
