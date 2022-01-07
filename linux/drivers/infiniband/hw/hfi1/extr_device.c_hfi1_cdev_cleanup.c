
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cdev {int dummy; } ;


 int cdev_del (struct cdev*) ;
 int device_unregister (struct device*) ;

void hfi1_cdev_cleanup(struct cdev *cdev, struct device **devp)
{
 struct device *device = *devp;

 if (device) {
  device_unregister(device);
  *devp = ((void*)0);

  cdev_del(cdev);
 }
}
