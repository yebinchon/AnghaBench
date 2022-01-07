
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmmu_vmsa_device {int dummy; } ;
struct TYPE_2__ {int driver; } ;


 int __ipmmu_check_device ;
 scalar_t__ driver_for_each_device (int *,int *,struct ipmmu_vmsa_device**,int ) ;
 TYPE_1__ ipmmu_driver ;

__attribute__((used)) static struct ipmmu_vmsa_device *ipmmu_find_root(void)
{
 struct ipmmu_vmsa_device *root = ((void*)0);

 return driver_for_each_device(&ipmmu_driver.driver, ((void*)0), &root,
          __ipmmu_check_device) == 0 ? root : ((void*)0);
}
