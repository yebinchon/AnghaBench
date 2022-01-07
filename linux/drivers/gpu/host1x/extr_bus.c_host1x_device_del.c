
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_device {int registered; int dev; } ;
struct host1x {int dummy; } ;


 int device_del (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void host1x_device_del(struct host1x *host1x,
         struct host1x_device *device)
{
 if (device->registered) {
  device->registered = 0;
  device_del(&device->dev);
 }

 put_device(&device->dev);
}
