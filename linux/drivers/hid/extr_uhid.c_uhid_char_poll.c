
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_device {scalar_t__ head; scalar_t__ tail; int waitq; } ;
struct file {struct uhid_device* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t uhid_char_poll(struct file *file, poll_table *wait)
{
 struct uhid_device *uhid = file->private_data;

 poll_wait(file, &uhid->waitq, wait);

 if (uhid->head != uhid->tail)
  return EPOLLIN | EPOLLRDNORM;

 return 0;
}
