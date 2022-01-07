
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {int dev; } ;


 int get_device (int *) ;

void ipack_get_device(struct ipack_device *dev)
{
 get_device(&dev->dev);
}
