
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev {int mutex; int handle; int open; scalar_t__ exist; } ;


 int input_close_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void evdev_close_device(struct evdev *evdev)
{
 mutex_lock(&evdev->mutex);

 if (evdev->exist && !--evdev->open)
  input_close_device(&evdev->handle);

 mutex_unlock(&evdev->mutex);
}
