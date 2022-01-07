
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct ib_umad_file {int recv_list; int recv_wait; } ;
struct file {struct ib_umad_file* private_data; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t ib_umad_poll(struct file *filp, struct poll_table_struct *wait)
{
 struct ib_umad_file *file = filp->private_data;


 __poll_t mask = EPOLLOUT | EPOLLWRNORM;

 poll_wait(filp, &file->recv_wait, wait);

 if (!list_empty(&file->recv_list))
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
