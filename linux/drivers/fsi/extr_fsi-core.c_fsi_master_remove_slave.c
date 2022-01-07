
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_slave {int dev; int cdev; } ;
struct device {int dummy; } ;


 int cdev_device_del (int *,int *) ;
 int device_for_each_child (struct device*,int *,int ) ;
 int fsi_slave_remove_device ;
 int put_device (struct device*) ;
 struct fsi_slave* to_fsi_slave (struct device*) ;

__attribute__((used)) static int fsi_master_remove_slave(struct device *dev, void *arg)
{
 struct fsi_slave *slave = to_fsi_slave(dev);

 device_for_each_child(dev, ((void*)0), fsi_slave_remove_device);
 cdev_device_del(&slave->cdev, &slave->dev);
 put_device(dev);
 return 0;
}
