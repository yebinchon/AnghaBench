
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roccat_device {unsigned int minor; int exist; int report_size; scalar_t__ cbuf_end; struct hid_device* hid; int cbuf_lock; int readers_lock; int readers; int wait; int dev; } ;
struct hid_device {TYPE_1__* driver; int dev; } ;
struct class {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int MKDEV (int ,unsigned int) ;
 int PTR_ERR (int ) ;
 unsigned int ROCCAT_MAX_DEVICES ;
 int device_create (struct class*,int *,int ,int *,char*,char*,int ,unsigned int) ;
 struct roccat_device** devices ;
 int devices_lock ;
 int init_waitqueue_head (int *) ;
 int kfree (struct roccat_device*) ;
 struct roccat_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roccat_major ;

int roccat_connect(struct class *klass, struct hid_device *hid, int report_size)
{
 unsigned int minor;
 struct roccat_device *device;
 int temp;

 device = kzalloc(sizeof(struct roccat_device), GFP_KERNEL);
 if (!device)
  return -ENOMEM;

 mutex_lock(&devices_lock);

 for (minor = 0; minor < ROCCAT_MAX_DEVICES; ++minor) {
  if (devices[minor])
   continue;
  break;
 }

 if (minor < ROCCAT_MAX_DEVICES) {
  devices[minor] = device;
 } else {
  mutex_unlock(&devices_lock);
  kfree(device);
  return -EINVAL;
 }

 device->dev = device_create(klass, &hid->dev,
   MKDEV(roccat_major, minor), ((void*)0),
   "%s%s%d", "roccat", hid->driver->name, minor);

 if (IS_ERR(device->dev)) {
  devices[minor] = ((void*)0);
  mutex_unlock(&devices_lock);
  temp = PTR_ERR(device->dev);
  kfree(device);
  return temp;
 }

 mutex_unlock(&devices_lock);

 init_waitqueue_head(&device->wait);
 INIT_LIST_HEAD(&device->readers);
 mutex_init(&device->readers_lock);
 mutex_init(&device->cbuf_lock);
 device->minor = minor;
 device->hid = hid;
 device->exist = 1;
 device->cbuf_end = 0;
 device->report_size = report_size;

 return minor;
}
