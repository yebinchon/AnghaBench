
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_param {int lock; TYPE_1__* fault_param; } ;
struct device {struct iommu_param* iommu_param; } ;
struct TYPE_2__ {int faults; } ;


 int EBUSY ;
 int EINVAL ;
 int kfree (TYPE_1__*) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;

int iommu_unregister_device_fault_handler(struct device *dev)
{
 struct iommu_param *param = dev->iommu_param;
 int ret = 0;

 if (!param)
  return -EINVAL;

 mutex_lock(&param->lock);

 if (!param->fault_param)
  goto unlock;


 if (!list_empty(&param->fault_param->faults)) {
  ret = -EBUSY;
  goto unlock;
 }

 kfree(param->fault_param);
 param->fault_param = ((void*)0);
 put_device(dev);
unlock:
 mutex_unlock(&param->lock);

 return ret;
}
