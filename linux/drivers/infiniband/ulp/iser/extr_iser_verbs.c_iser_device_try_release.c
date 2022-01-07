
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_device {int ig_list; int refcount; } ;
struct TYPE_2__ {int device_list_mutex; } ;


 TYPE_1__ ig ;
 int iser_free_device_ib_res (struct iser_device*) ;
 int iser_info (char*,struct iser_device*,int ) ;
 int kfree (struct iser_device*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iser_device_try_release(struct iser_device *device)
{
 mutex_lock(&ig.device_list_mutex);
 device->refcount--;
 iser_info("device %p refcount %d\n", device, device->refcount);
 if (!device->refcount) {
  iser_free_device_ib_res(device);
  list_del(&device->ig_list);
  kfree(device);
 }
 mutex_unlock(&ig.device_list_mutex);
}
