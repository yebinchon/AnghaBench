
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_device {int device; int channels_kset; } ;


 int dev_name (int *) ;
 int device_unregister (int *) ;
 int kset_unregister (int ) ;
 int pr_debug (char*,int ) ;

void vmbus_device_unregister(struct hv_device *device_obj)
{
 pr_debug("child device %s unregistered\n",
  dev_name(&device_obj->device));

 kset_unregister(device_obj->channels_kset);





 device_unregister(&device_obj->device);
}
