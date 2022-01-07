
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct gnss_serial {struct serdev_device* serdev; } ;
struct gnss_device {int dummy; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 struct gnss_serial* gnss_get_drvdata (struct gnss_device*) ;
 int serdev_device_wait_until_sent (struct serdev_device*,int ) ;
 int serdev_device_write (struct serdev_device*,unsigned char const*,size_t,int ) ;

__attribute__((used)) static int gnss_serial_write_raw(struct gnss_device *gdev,
  const unsigned char *buf, size_t count)
{
 struct gnss_serial *gserial = gnss_get_drvdata(gdev);
 struct serdev_device *serdev = gserial->serdev;
 int ret;


 ret = serdev_device_write(serdev, buf, count, MAX_SCHEDULE_TIMEOUT);
 if (ret < 0 || ret < count)
  return ret;


 serdev_device_wait_until_sent(serdev, 0);

 return count;
}
