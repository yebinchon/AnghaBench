
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct input_handle {struct evdev* private; } ;
struct TYPE_3__ {int devt; } ;
struct evdev {TYPE_1__ dev; int cdev; } ;


 int MINOR (int ) ;
 int cdev_device_del (int *,TYPE_1__*) ;
 int evdev_cleanup (struct evdev*) ;
 int input_free_minor (int ) ;
 int input_unregister_handle (struct input_handle*) ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static void evdev_disconnect(struct input_handle *handle)
{
 struct evdev *evdev = handle->private;

 cdev_device_del(&evdev->cdev, &evdev->dev);
 evdev_cleanup(evdev);
 input_free_minor(MINOR(evdev->dev.devt));
 input_unregister_handle(handle);
 put_device(&evdev->dev);
}
