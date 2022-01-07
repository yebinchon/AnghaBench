
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_test_device {int async_queue; } ;
struct file {struct mbox_test_device* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int mbox_test_message_fasync(int fd, struct file *filp, int on)
{
 struct mbox_test_device *tdev = filp->private_data;

 return fasync_helper(fd, filp, on, &tdev->async_queue);
}
