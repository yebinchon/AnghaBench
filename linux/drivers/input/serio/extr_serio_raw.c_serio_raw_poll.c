
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_raw_client {struct serio_raw* serio_raw; } ;
struct serio_raw {scalar_t__ head; scalar_t__ tail; scalar_t__ dead; int wait; } ;
struct file {struct serio_raw_client* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t serio_raw_poll(struct file *file, poll_table *wait)
{
 struct serio_raw_client *client = file->private_data;
 struct serio_raw *serio_raw = client->serio_raw;
 __poll_t mask;

 poll_wait(file, &serio_raw->wait, wait);

 mask = serio_raw->dead ? EPOLLHUP | EPOLLERR : EPOLLOUT | EPOLLWRNORM;
 if (serio_raw->head != serio_raw->tail)
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
