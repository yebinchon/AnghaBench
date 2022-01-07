
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {struct input_dev* dev; } ;
struct input_dev {int mutex; scalar_t__ grab; } ;


 int EBUSY ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (scalar_t__,struct input_handle*) ;

int input_grab_device(struct input_handle *handle)
{
 struct input_dev *dev = handle->dev;
 int retval;

 retval = mutex_lock_interruptible(&dev->mutex);
 if (retval)
  return retval;

 if (dev->grab) {
  retval = -EBUSY;
  goto out;
 }

 rcu_assign_pointer(dev->grab, handle);

 out:
 mutex_unlock(&dev->mutex);
 return retval;
}
