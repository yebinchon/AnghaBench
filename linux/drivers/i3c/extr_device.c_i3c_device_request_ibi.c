
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_ibi_setup {int num_slots; int handler; } ;
struct i3c_device {int bus; TYPE_1__* desc; } ;
struct TYPE_2__ {int ibi_lock; } ;


 int EINVAL ;
 int ENOENT ;
 int i3c_bus_normaluse_lock (int ) ;
 int i3c_bus_normaluse_unlock (int ) ;
 int i3c_dev_request_ibi_locked (TYPE_1__*,struct i3c_ibi_setup const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int i3c_device_request_ibi(struct i3c_device *dev,
      const struct i3c_ibi_setup *req)
{
 int ret = -ENOENT;

 if (!req->handler || !req->num_slots)
  return -EINVAL;

 i3c_bus_normaluse_lock(dev->bus);
 if (dev->desc) {
  mutex_lock(&dev->desc->ibi_lock);
  ret = i3c_dev_request_ibi_locked(dev->desc, req);
  mutex_unlock(&dev->desc->ibi_lock);
 }
 i3c_bus_normaluse_unlock(dev->bus);

 return ret;
}
