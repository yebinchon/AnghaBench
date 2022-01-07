
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dev; } ;
struct gnss_serial {int speed; struct serdev_device* serdev; } ;
struct gnss_device {int dummy; } ;


 struct gnss_serial* gnss_get_drvdata (struct gnss_device*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int serdev_device_close (struct serdev_device*) ;
 int serdev_device_open (struct serdev_device*) ;
 int serdev_device_set_baudrate (struct serdev_device*,int ) ;
 int serdev_device_set_flow_control (struct serdev_device*,int) ;

__attribute__((used)) static int gnss_serial_open(struct gnss_device *gdev)
{
 struct gnss_serial *gserial = gnss_get_drvdata(gdev);
 struct serdev_device *serdev = gserial->serdev;
 int ret;

 ret = serdev_device_open(serdev);
 if (ret)
  return ret;

 serdev_device_set_baudrate(serdev, gserial->speed);
 serdev_device_set_flow_control(serdev, 0);

 ret = pm_runtime_get_sync(&serdev->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(&serdev->dev);
  goto err_close;
 }

 return 0;

err_close:
 serdev_device_close(serdev);

 return ret;
}
