
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uleds_device {scalar_t__ new_data; int waitq; } ;
struct file {struct uleds_device* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t uleds_poll(struct file *file, poll_table *wait)
{
 struct uleds_device *udev = file->private_data;

 poll_wait(file, &udev->waitq, wait);

 if (udev->new_data)
  return EPOLLIN | EPOLLRDNORM;

 return 0;
}
