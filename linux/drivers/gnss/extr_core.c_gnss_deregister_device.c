
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gnss_device {int disconnected; int dev; int cdev; int rwsem; TYPE_1__* ops; int read_queue; scalar_t__ count; } ;
struct TYPE_2__ {int (* close ) (struct gnss_device*) ;} ;


 int cdev_device_del (int *,int *) ;
 int down_write (int *) ;
 int stub1 (struct gnss_device*) ;
 int up_write (int *) ;
 int wake_up_interruptible (int *) ;

void gnss_deregister_device(struct gnss_device *gdev)
{
 down_write(&gdev->rwsem);
 gdev->disconnected = 1;
 if (gdev->count) {
  wake_up_interruptible(&gdev->read_queue);
  gdev->ops->close(gdev);
 }
 up_write(&gdev->rwsem);

 cdev_device_del(&gdev->cdev, &gdev->dev);
}
