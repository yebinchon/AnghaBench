
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev_client {struct joydev* joydev; } ;
struct joydev {scalar_t__ exist; int wait; } ;
struct file {struct joydev_client* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ joydev_data_pending (struct joydev_client*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t joydev_poll(struct file *file, poll_table *wait)
{
 struct joydev_client *client = file->private_data;
 struct joydev *joydev = client->joydev;

 poll_wait(file, &joydev->wait, wait);
 return (joydev_data_pending(client) ? (EPOLLIN | EPOLLRDNORM) : 0) |
  (joydev->exist ? 0 : (EPOLLHUP | EPOLLERR));
}
