
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct capidev* private_data; } ;
struct TYPE_2__ {int applid; } ;
struct capidev {int recvqueue; int recvwait; TYPE_1__ ap; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int skb_queue_empty_lockless (int *) ;

__attribute__((used)) static __poll_t
capi_poll(struct file *file, poll_table *wait)
{
 struct capidev *cdev = file->private_data;
 __poll_t mask = 0;

 if (!cdev->ap.applid)
  return EPOLLERR;

 poll_wait(file, &(cdev->recvwait), wait);
 mask = EPOLLOUT | EPOLLWRNORM;
 if (!skb_queue_empty_lockless(&cdev->recvqueue))
  mask |= EPOLLIN | EPOLLRDNORM;
 return mask;
}
