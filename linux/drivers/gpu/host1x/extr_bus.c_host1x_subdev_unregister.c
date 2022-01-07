
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_subdev {int dummy; } ;
struct host1x_device {int subdevs_lock; } ;


 int __host1x_subdev_unregister (struct host1x_device*,struct host1x_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void host1x_subdev_unregister(struct host1x_device *device,
         struct host1x_subdev *subdev)
{
 mutex_lock(&device->subdevs_lock);
 __host1x_subdev_unregister(device, subdev);
 mutex_unlock(&device->subdevs_lock);
}
