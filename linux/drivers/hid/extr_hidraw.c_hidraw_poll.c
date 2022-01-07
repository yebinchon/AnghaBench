
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidraw_list {scalar_t__ head; scalar_t__ tail; TYPE_1__* hidraw; } ;
struct file {struct hidraw_list* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int exist; int wait; } ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t hidraw_poll(struct file *file, poll_table *wait)
{
 struct hidraw_list *list = file->private_data;

 poll_wait(file, &list->hidraw->wait, wait);
 if (list->head != list->tail)
  return EPOLLIN | EPOLLRDNORM | EPOLLOUT;
 if (!list->hidraw->exist)
  return EPOLLERR | EPOLLHUP;
 return 0;
}
