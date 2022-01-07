
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct mbox_test_device {int waitq; } ;
struct file {struct mbox_test_device* private_data; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ mbox_test_message_data_ready (struct mbox_test_device*) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t
mbox_test_message_poll(struct file *filp, struct poll_table_struct *wait)
{
 struct mbox_test_device *tdev = filp->private_data;

 poll_wait(filp, &tdev->waitq, wait);

 if (mbox_test_message_data_ready(tdev))
  return EPOLLIN | EPOLLRDNORM;
 return 0;
}
