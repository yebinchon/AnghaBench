
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * iommu_param; } ;


 int kfree (int *) ;

__attribute__((used)) static void iommu_free_dev_param(struct device *dev)
{
 kfree(dev->iommu_param);
 dev->iommu_param = ((void*)0);
}
