
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {struct ipack_bus_device* bus; } ;
struct ipack_bus_device {int dummy; } ;
struct device {int dummy; } ;


 int ipack_device_del (struct ipack_device*) ;
 struct ipack_device* to_ipack_dev (struct device*) ;

__attribute__((used)) static int ipack_unregister_bus_member(struct device *dev, void *data)
{
 struct ipack_device *idev = to_ipack_dev(dev);
 struct ipack_bus_device *bus = data;

 if (idev->bus == bus)
  ipack_device_del(idev);

 return 1;
}
