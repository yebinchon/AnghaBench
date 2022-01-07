
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct client* private_data; } ;
struct client {int event_list; int device; int wait; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ fw_device_is_shutdown (int ) ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t fw_device_op_poll(struct file *file, poll_table * pt)
{
 struct client *client = file->private_data;
 __poll_t mask = 0;

 poll_wait(file, &client->wait, pt);

 if (fw_device_is_shutdown(client->device))
  mask |= EPOLLHUP | EPOLLERR;
 if (!list_empty(&client->event_list))
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
