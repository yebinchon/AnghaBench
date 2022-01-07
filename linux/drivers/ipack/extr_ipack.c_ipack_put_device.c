
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {int dev; } ;


 int put_device (int *) ;

void ipack_put_device(struct ipack_device *dev)
{
 put_device(&dev->dev);
}
