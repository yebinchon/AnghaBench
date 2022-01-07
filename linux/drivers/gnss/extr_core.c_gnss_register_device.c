
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gnss_device {int dev; int cdev; int flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int * write_raw; } ;


 int GNSS_FLAG_HAS_WRITE_RAW ;
 int cdev_device_add (int *,int *) ;
 int dev_err (int *,char*,int) ;

int gnss_register_device(struct gnss_device *gdev)
{
 int ret;


 if (gdev->ops->write_raw != ((void*)0))
  gdev->flags |= GNSS_FLAG_HAS_WRITE_RAW;

 ret = cdev_device_add(&gdev->cdev, &gdev->dev);
 if (ret) {
  dev_err(&gdev->dev, "failed to add device: %d\n", ret);
  return ret;
 }

 return 0;
}
