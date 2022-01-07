
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roccat_device {int wait; int hid; scalar_t__ open; TYPE_1__* dev; scalar_t__ exist; } ;
struct TYPE_2__ {int class; } ;


 int MKDEV (int ,int) ;
 int device_destroy (int ,int ) ;
 struct roccat_device** devices ;
 int devices_lock ;
 int hid_hw_close (int ) ;
 int kfree (struct roccat_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_major ;
 int wake_up_interruptible (int *) ;

void roccat_disconnect(int minor)
{
 struct roccat_device *device;

 mutex_lock(&devices_lock);
 device = devices[minor];
 mutex_unlock(&devices_lock);

 device->exist = 0;

 device_destroy(device->dev->class, MKDEV(roccat_major, minor));

 mutex_lock(&devices_lock);
 devices[minor] = ((void*)0);
 mutex_unlock(&devices_lock);

 if (device->open) {
  hid_hw_close(device->hid);
  wake_up_interruptible(&device->wait);
 } else {
  kfree(device);
 }
}
