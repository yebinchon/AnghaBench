
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_param {int lock; } ;
struct device {struct iommu_param* iommu_param; } ;


 int GFP_KERNEL ;
 struct iommu_param* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct iommu_param *iommu_get_dev_param(struct device *dev)
{
 struct iommu_param *param = dev->iommu_param;

 if (param)
  return param;

 param = kzalloc(sizeof(*param), GFP_KERNEL);
 if (!param)
  return ((void*)0);

 mutex_init(&param->lock);
 dev->iommu_param = param;
 return param;
}
