
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev {int mutex; int open; int handle; int exist; } ;


 int ENODEV ;
 int input_open_device (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int evdev_open_device(struct evdev *evdev)
{
 int retval;

 retval = mutex_lock_interruptible(&evdev->mutex);
 if (retval)
  return retval;

 if (!evdev->exist)
  retval = -ENODEV;
 else if (!evdev->open++) {
  retval = input_open_device(&evdev->handle);
  if (retval)
   evdev->open--;
 }

 mutex_unlock(&evdev->mutex);
 return retval;
}
