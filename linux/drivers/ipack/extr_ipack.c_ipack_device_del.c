
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {int dev; } ;


 int device_del (int *) ;
 int ipack_put_device (struct ipack_device*) ;

void ipack_device_del(struct ipack_device *dev)
{
 device_del(&dev->dev);
 ipack_put_device(dev);
}
