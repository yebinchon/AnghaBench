
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct dm_file* private_data; } ;
struct dm_file {scalar_t__ global_event_nr; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 scalar_t__ atomic_read (int *) ;
 int dm_global_event_nr ;
 int dm_global_eventq ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t dm_poll(struct file *filp, poll_table *wait)
{
 struct dm_file *priv = filp->private_data;
 __poll_t mask = 0;

 poll_wait(filp, &dm_global_eventq, wait);

 if ((int)(atomic_read(&dm_global_event_nr) - priv->global_event_nr) > 0)
  mask |= EPOLLIN;

 return mask;
}
