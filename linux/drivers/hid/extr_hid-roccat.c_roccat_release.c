
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roccat_reader {int hid; scalar_t__ exist; int open; int readers_lock; int node; } ;
struct roccat_device {int hid; scalar_t__ exist; int open; int readers_lock; int node; } ;
struct inode {int dummy; } ;
struct file {struct roccat_reader* private_data; } ;


 int ENODEV ;
 int PM_HINT_NORMAL ;
 struct roccat_reader** devices ;
 int devices_lock ;
 int hid_hw_close (int ) ;
 int hid_hw_power (int ,int ) ;
 unsigned int iminor (struct inode*) ;
 int kfree (struct roccat_reader*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_emerg (char*,unsigned int) ;

__attribute__((used)) static int roccat_release(struct inode *inode, struct file *file)
{
 unsigned int minor = iminor(inode);
 struct roccat_reader *reader = file->private_data;
 struct roccat_device *device;

 mutex_lock(&devices_lock);

 device = devices[minor];
 if (!device) {
  mutex_unlock(&devices_lock);
  pr_emerg("roccat device with minor %d doesn't exist\n", minor);
  return -ENODEV;
 }

 mutex_lock(&device->readers_lock);
 list_del(&reader->node);
 mutex_unlock(&device->readers_lock);
 kfree(reader);

 if (!--device->open) {

  if (device->exist) {
   hid_hw_power(device->hid, PM_HINT_NORMAL);
   hid_hw_close(device->hid);
  } else {
   kfree(device);
  }
 }

 mutex_unlock(&devices_lock);

 return 0;
}
