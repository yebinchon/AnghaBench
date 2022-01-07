
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userio_device {scalar_t__ head; scalar_t__ tail; int waitq; } ;
struct file {struct userio_device* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t userio_char_poll(struct file *file, poll_table *wait)
{
 struct userio_device *userio = file->private_data;

 poll_wait(file, &userio->waitq, wait);

 if (userio->head != userio->tail)
  return EPOLLIN | EPOLLRDNORM;

 return 0;
}
