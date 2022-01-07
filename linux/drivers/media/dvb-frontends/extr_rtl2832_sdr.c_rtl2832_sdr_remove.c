
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl2832_sdr_dev {int v4l2_dev; int vb_queue_lock; int v4l2_lock; int vdev; int * udev; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int owner; } ;


 int dev_dbg (TYPE_3__*,char*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rtl2832_sdr_dev* platform_get_drvdata (struct platform_device*) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int rtl2832_sdr_remove(struct platform_device *pdev)
{
 struct rtl2832_sdr_dev *dev = platform_get_drvdata(pdev);

 dev_dbg(&pdev->dev, "\n");

 mutex_lock(&dev->vb_queue_lock);
 mutex_lock(&dev->v4l2_lock);

 dev->udev = ((void*)0);
 v4l2_device_disconnect(&dev->v4l2_dev);
 video_unregister_device(&dev->vdev);
 mutex_unlock(&dev->v4l2_lock);
 mutex_unlock(&dev->vb_queue_lock);
 v4l2_device_put(&dev->v4l2_dev);
 module_put(pdev->dev.parent->driver->owner);

 return 0;
}
