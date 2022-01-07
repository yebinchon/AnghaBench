
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dev; } ;
struct gnss_serial {int gdev; struct serdev_device* serdev; } ;


 int CONFIG_PM ;
 int GNSS_SERIAL_ACTIVE ;
 int GNSS_SERIAL_OFF ;
 scalar_t__ IS_ENABLED (int ) ;
 int gnss_register_device (int ) ;
 int gnss_serial_set_power (struct gnss_serial*,int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;

int gnss_serial_register(struct gnss_serial *gserial)
{
 struct serdev_device *serdev = gserial->serdev;
 int ret;

 if (IS_ENABLED(CONFIG_PM)) {
  pm_runtime_enable(&serdev->dev);
 } else {
  ret = gnss_serial_set_power(gserial, GNSS_SERIAL_ACTIVE);
  if (ret < 0)
   return ret;
 }

 ret = gnss_register_device(gserial->gdev);
 if (ret)
  goto err_disable_rpm;

 return 0;

err_disable_rpm:
 if (IS_ENABLED(CONFIG_PM))
  pm_runtime_disable(&serdev->dev);
 else
  gnss_serial_set_power(gserial, GNSS_SERIAL_OFF);

 return ret;
}
