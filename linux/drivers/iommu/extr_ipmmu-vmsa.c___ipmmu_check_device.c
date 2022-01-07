
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_device {int dummy; } ;
struct device {int dummy; } ;


 struct ipmmu_vmsa_device* dev_get_drvdata (struct device*) ;
 scalar_t__ ipmmu_is_root (struct ipmmu_vmsa_device*) ;

__attribute__((used)) static int __ipmmu_check_device(struct device *dev, void *data)
{
 struct ipmmu_vmsa_device *mmu = dev_get_drvdata(dev);
 struct ipmmu_vmsa_device **rootp = data;

 if (ipmmu_is_root(mmu))
  *rootp = mmu;

 return 0;
}
