
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int sdei_device_thaw (struct device*) ;
 int sdei_platform_reset () ;

__attribute__((used)) static int sdei_device_restore(struct device *dev)
{
 int err;

 err = sdei_platform_reset();
 if (err)
  return err;

 return sdei_device_thaw(dev);
}
