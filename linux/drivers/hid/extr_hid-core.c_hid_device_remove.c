
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_driver {int (* remove ) (struct hid_device*) ;} ;
struct hid_device {int io_started; int driver_input_lock; struct hid_driver* driver; } ;
struct device {int dummy; } ;


 int EINTR ;
 scalar_t__ down_interruptible (int *) ;
 int hid_close_report (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int stub1 (struct hid_device*) ;
 struct hid_device* to_hid_device (struct device*) ;
 int up (int *) ;

__attribute__((used)) static int hid_device_remove(struct device *dev)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct hid_driver *hdrv;
 int ret = 0;

 if (down_interruptible(&hdev->driver_input_lock)) {
  ret = -EINTR;
  goto end;
 }
 hdev->io_started = 0;

 hdrv = hdev->driver;
 if (hdrv) {
  if (hdrv->remove)
   hdrv->remove(hdev);
  else
   hid_hw_stop(hdev);
  hid_close_report(hdev);
  hdev->driver = ((void*)0);
 }

 if (!hdev->io_started)
  up(&hdev->driver_input_lock);
end:
 return ret;
}
