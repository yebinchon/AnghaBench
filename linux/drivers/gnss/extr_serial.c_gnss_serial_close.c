
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dev; } ;
struct gnss_serial {struct serdev_device* serdev; } ;
struct gnss_device {int dummy; } ;


 struct gnss_serial* gnss_get_drvdata (struct gnss_device*) ;
 int pm_runtime_put (int *) ;
 int serdev_device_close (struct serdev_device*) ;

__attribute__((used)) static void gnss_serial_close(struct gnss_device *gdev)
{
 struct gnss_serial *gserial = gnss_get_drvdata(gdev);
 struct serdev_device *serdev = gserial->serdev;

 serdev_device_close(serdev);

 pm_runtime_put(&serdev->dev);
}
