
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev {int mutex; int open; int handle; int exist; } ;


 int ENODEV ;
 int input_open_device (int *) ;
 int joydev_refresh_state (struct joydev*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int joydev_open_device(struct joydev *joydev)
{
 int retval;

 retval = mutex_lock_interruptible(&joydev->mutex);
 if (retval)
  return retval;

 if (!joydev->exist)
  retval = -ENODEV;
 else if (!joydev->open++) {
  retval = input_open_device(&joydev->handle);
  if (retval)
   joydev->open--;
  else
   joydev_refresh_state(joydev);
 }

 mutex_unlock(&joydev->mutex);
 return retval;
}
