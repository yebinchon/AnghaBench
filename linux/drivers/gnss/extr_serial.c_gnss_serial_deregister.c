
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dev; } ;
struct gnss_serial {int gdev; struct serdev_device* serdev; } ;


 int CONFIG_PM ;
 int GNSS_SERIAL_OFF ;
 scalar_t__ IS_ENABLED (int ) ;
 int gnss_deregister_device (int ) ;
 int gnss_serial_set_power (struct gnss_serial*,int ) ;
 int pm_runtime_disable (int *) ;

void gnss_serial_deregister(struct gnss_serial *gserial)
{
 struct serdev_device *serdev = gserial->serdev;

 gnss_deregister_device(gserial->gdev);

 if (IS_ENABLED(CONFIG_PM))
  pm_runtime_disable(&serdev->dev);
 else
  gnss_serial_set_power(gserial, GNSS_SERIAL_OFF);
}
