
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {struct client* private_data; } ;
struct TYPE_4__ {int size; int wait; } ;
struct client {TYPE_1__* lynx; TYPE_2__ buffer; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_3__ {int link; } ;


 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t
nosy_poll(struct file *file, poll_table *pt)
{
 struct client *client = file->private_data;
 __poll_t ret = 0;

 poll_wait(file, &client->buffer.wait, pt);

 if (atomic_read(&client->buffer.size) > 0)
  ret = EPOLLIN | EPOLLRDNORM;

 if (list_empty(&client->lynx->link))
  ret |= EPOLLHUP;

 return ret;
}
