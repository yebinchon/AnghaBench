
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
struct arm_smmu_device {int dummy; } ;
struct TYPE_2__ {int driver; } ;


 TYPE_1__ arm_smmu_driver ;
 struct arm_smmu_device* dev_get_drvdata (struct device*) ;
 struct device* driver_find_device_by_fwnode (int *,struct fwnode_handle*) ;
 int put_device (struct device*) ;

__attribute__((used)) static
struct arm_smmu_device *arm_smmu_get_by_fwnode(struct fwnode_handle *fwnode)
{
 struct device *dev = driver_find_device_by_fwnode(&arm_smmu_driver.driver,
         fwnode);
 put_device(dev);
 return dev ? dev_get_drvdata(dev) : ((void*)0);
}
