
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct gnss_device {scalar_t__ count; int dev; int rwsem; int read_fifo; TYPE_1__* ops; scalar_t__ disconnected; } ;
struct file {struct gnss_device* private_data; } ;
struct TYPE_2__ {int (* close ) (struct gnss_device*) ;} ;


 int down_write (int *) ;
 int kfifo_reset (int *) ;
 int put_device (int *) ;
 int stub1 (struct gnss_device*) ;
 int up_write (int *) ;

__attribute__((used)) static int gnss_release(struct inode *inode, struct file *file)
{
 struct gnss_device *gdev = file->private_data;

 down_write(&gdev->rwsem);
 if (gdev->disconnected)
  goto unlock;

 if (--gdev->count == 0) {
  gdev->ops->close(gdev);
  kfifo_reset(&gdev->read_fifo);
 }
unlock:
 up_write(&gdev->rwsem);

 put_device(&gdev->dev);

 return 0;
}
