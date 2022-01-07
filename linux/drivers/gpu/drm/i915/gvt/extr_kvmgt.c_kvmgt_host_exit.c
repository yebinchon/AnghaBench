
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int mdev_unregister_device (struct device*) ;

__attribute__((used)) static void kvmgt_host_exit(struct device *dev)
{
 mdev_unregister_device(dev);
}
