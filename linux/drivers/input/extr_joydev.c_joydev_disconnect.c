
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int devt; } ;
struct joydev {TYPE_1__ dev; int cdev; } ;
struct input_handle {struct joydev* private; } ;


 int MINOR (int ) ;
 int cdev_device_del (int *,TYPE_1__*) ;
 int input_free_minor (int ) ;
 int input_unregister_handle (struct input_handle*) ;
 int joydev_cleanup (struct joydev*) ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static void joydev_disconnect(struct input_handle *handle)
{
 struct joydev *joydev = handle->private;

 cdev_device_del(&joydev->cdev, &joydev->dev);
 joydev_cleanup(joydev);
 input_free_minor(MINOR(joydev->dev.devt));
 input_unregister_handle(handle);
 put_device(&joydev->dev);
}
