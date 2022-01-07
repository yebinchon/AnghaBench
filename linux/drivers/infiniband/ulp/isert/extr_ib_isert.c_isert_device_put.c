
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_device {int dev_node; int refcount; } ;


 int device_list_mutex ;
 int isert_free_device_ib_res (struct isert_device*) ;
 int isert_info (char*,struct isert_device*,int ) ;
 int kfree (struct isert_device*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
isert_device_put(struct isert_device *device)
{
 mutex_lock(&device_list_mutex);
 device->refcount--;
 isert_info("device %p refcount %d\n", device, device->refcount);
 if (!device->refcount) {
  isert_free_device_ib_res(device);
  list_del(&device->dev_node);
  kfree(device);
 }
 mutex_unlock(&device_list_mutex);
}
