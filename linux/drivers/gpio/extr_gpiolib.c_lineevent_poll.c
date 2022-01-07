
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct lineevent_state {int events; int wait; } ;
struct file {struct lineevent_state* private_data; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int kfifo_is_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t lineevent_poll(struct file *filep,
       struct poll_table_struct *wait)
{
 struct lineevent_state *le = filep->private_data;
 __poll_t events = 0;

 poll_wait(filep, &le->wait, wait);

 if (!kfifo_is_empty(&le->events))
  events = EPOLLIN | EPOLLRDNORM;

 return events;
}
