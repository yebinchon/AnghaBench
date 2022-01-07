
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {struct input_dev* dev; } ;
struct input_dev {int mutex; } ;


 int __input_release_device (struct input_handle*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void input_release_device(struct input_handle *handle)
{
 struct input_dev *dev = handle->dev;

 mutex_lock(&dev->mutex);
 __input_release_device(handle);
 mutex_unlock(&dev->mutex);
}
