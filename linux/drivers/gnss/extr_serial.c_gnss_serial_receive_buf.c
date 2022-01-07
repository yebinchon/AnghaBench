
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct gnss_serial {struct gnss_device* gdev; } ;
struct gnss_device {int dummy; } ;


 int gnss_insert_raw (struct gnss_device*,unsigned char const*,size_t) ;
 struct gnss_serial* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static int gnss_serial_receive_buf(struct serdev_device *serdev,
     const unsigned char *buf, size_t count)
{
 struct gnss_serial *gserial = serdev_device_get_drvdata(serdev);
 struct gnss_device *gdev = gserial->gdev;

 return gnss_insert_raw(gdev, buf, count);
}
