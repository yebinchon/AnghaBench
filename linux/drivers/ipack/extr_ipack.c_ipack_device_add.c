
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {int dev; } ;


 int device_add (int *) ;

int ipack_device_add(struct ipack_device *dev)
{
 return device_add(&dev->dev);
}
