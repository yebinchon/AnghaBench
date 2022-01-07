
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct evdev_client {int revoked; } ;
struct evdev {int wait; int handle; } ;


 int evdev_ungrab (struct evdev*,struct evdev_client*) ;
 int input_flush_device (int *,struct file*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int evdev_revoke(struct evdev *evdev, struct evdev_client *client,
   struct file *file)
{
 client->revoked = 1;
 evdev_ungrab(evdev, client);
 input_flush_device(&evdev->handle, file);
 wake_up_interruptible(&evdev->wait);

 return 0;
}
