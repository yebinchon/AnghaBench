
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct coreboot_device {int dummy; } ;


 struct coreboot_device* CB_DEV (struct device*) ;
 int kfree (struct coreboot_device*) ;

__attribute__((used)) static void coreboot_device_release(struct device *dev)
{
 struct coreboot_device *device = CB_DEV(dev);

 kfree(device);
}
