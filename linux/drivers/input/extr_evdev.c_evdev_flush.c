
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct evdev_client* private_data; } ;
struct evdev_client {int revoked; struct evdev* evdev; } ;
struct evdev {int mutex; int handle; scalar_t__ exist; } ;
typedef int fl_owner_t ;


 int input_flush_device (int *,struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int evdev_flush(struct file *file, fl_owner_t id)
{
 struct evdev_client *client = file->private_data;
 struct evdev *evdev = client->evdev;

 mutex_lock(&evdev->mutex);

 if (evdev->exist && !client->revoked)
  input_flush_device(&evdev->handle, file);

 mutex_unlock(&evdev->mutex);
 return 0;
}
