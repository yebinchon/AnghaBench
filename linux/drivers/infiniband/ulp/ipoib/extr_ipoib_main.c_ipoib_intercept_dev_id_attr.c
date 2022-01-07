
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;


 int dev_attr_dev_id ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static int ipoib_intercept_dev_id_attr(struct net_device *dev)
{
 device_remove_file(&dev->dev, &dev_attr_dev_id);
 return device_create_file(&dev->dev, &dev_attr_dev_id);
}
