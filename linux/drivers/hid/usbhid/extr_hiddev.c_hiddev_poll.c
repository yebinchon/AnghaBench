
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hiddev_list {scalar_t__ head; scalar_t__ tail; TYPE_1__* hiddev; } ;
struct file {struct hiddev_list* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int exist; int wait; } ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t hiddev_poll(struct file *file, poll_table *wait)
{
 struct hiddev_list *list = file->private_data;

 poll_wait(file, &list->hiddev->wait, wait);
 if (list->head != list->tail)
  return EPOLLIN | EPOLLRDNORM | EPOLLOUT;
 if (!list->hiddev->exist)
  return EPOLLERR | EPOLLHUP;
 return 0;
}
