
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnss_device {scalar_t__ disconnected; int read_fifo; int read_queue; } ;
struct file {struct gnss_device* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int kfifo_is_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t gnss_poll(struct file *file, poll_table *wait)
{
 struct gnss_device *gdev = file->private_data;
 __poll_t mask = 0;

 poll_wait(file, &gdev->read_queue, wait);

 if (!kfifo_is_empty(&gdev->read_fifo))
  mask |= EPOLLIN | EPOLLRDNORM;
 if (gdev->disconnected)
  mask |= EPOLLHUP;

 return mask;
}
