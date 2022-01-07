
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_device {int compat_devs_mutex; int compat_devs; } ;
struct ib_core_device {int dev; } ;


 int device_del (int *) ;
 int ib_free_port_attrs (struct ib_core_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 struct ib_core_device* xa_erase (int *,int ) ;

__attribute__((used)) static void remove_one_compat_dev(struct ib_device *device, u32 id)
{
 struct ib_core_device *cdev;

 mutex_lock(&device->compat_devs_mutex);
 cdev = xa_erase(&device->compat_devs, id);
 mutex_unlock(&device->compat_devs_mutex);
 if (cdev) {
  ib_free_port_attrs(cdev);
  device_del(&cdev->dev);
  put_device(&cdev->dev);
 }
}
