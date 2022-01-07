
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iommu; } ;
struct device {TYPE_1__ archdata; } ;


 scalar_t__ DUMMY_DEVICE_DOMAIN_INFO ;

__attribute__((used)) static int iommu_dummy(struct device *dev)
{
 return dev->archdata.iommu == DUMMY_DEVICE_DOMAIN_INFO;
}
