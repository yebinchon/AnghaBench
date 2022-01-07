
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roccat_reader {int node; int cbuf_start; struct roccat_device* device; } ;
struct roccat_device {int readers_lock; int readers; int cbuf_end; int open; int hid; } ;
struct inode {int dummy; } ;
struct file {struct roccat_reader* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PM_HINT_FULLON ;
 int PM_HINT_NORMAL ;
 struct roccat_device** devices ;
 int devices_lock ;
 int hid_hw_open (int ) ;
 int hid_hw_power (int ,int ) ;
 unsigned int iminor (struct inode*) ;
 int kfree (struct roccat_reader*) ;
 struct roccat_reader* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_emerg (char*,unsigned int) ;

__attribute__((used)) static int roccat_open(struct inode *inode, struct file *file)
{
 unsigned int minor = iminor(inode);
 struct roccat_reader *reader;
 struct roccat_device *device;
 int error = 0;

 reader = kzalloc(sizeof(struct roccat_reader), GFP_KERNEL);
 if (!reader)
  return -ENOMEM;

 mutex_lock(&devices_lock);

 device = devices[minor];

 if (!device) {
  pr_emerg("roccat device with minor %d doesn't exist\n", minor);
  error = -ENODEV;
  goto exit_err_devices;
 }

 mutex_lock(&device->readers_lock);

 if (!device->open++) {

  error = hid_hw_power(device->hid, PM_HINT_FULLON);
  if (error < 0) {
   --device->open;
   goto exit_err_readers;
  }

  error = hid_hw_open(device->hid);
  if (error < 0) {
   hid_hw_power(device->hid, PM_HINT_NORMAL);
   --device->open;
   goto exit_err_readers;
  }
 }

 reader->device = device;

 reader->cbuf_start = device->cbuf_end;

 list_add_tail(&reader->node, &device->readers);
 file->private_data = reader;

exit_err_readers:
 mutex_unlock(&device->readers_lock);
exit_err_devices:
 mutex_unlock(&devices_lock);
 if (error)
  kfree(reader);
 return error;
}
