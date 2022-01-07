
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_param {int lock; TYPE_1__* fault_param; } ;
struct device {struct iommu_param* iommu_param; } ;
typedef int iommu_dev_fault_handler_t ;
struct TYPE_2__ {int faults; int lock; void* data; int handler; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int get_device (struct device*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;

int iommu_register_device_fault_handler(struct device *dev,
     iommu_dev_fault_handler_t handler,
     void *data)
{
 struct iommu_param *param = dev->iommu_param;
 int ret = 0;

 if (!param)
  return -EINVAL;

 mutex_lock(&param->lock);

 if (param->fault_param) {
  ret = -EBUSY;
  goto done_unlock;
 }

 get_device(dev);
 param->fault_param = kzalloc(sizeof(*param->fault_param), GFP_KERNEL);
 if (!param->fault_param) {
  put_device(dev);
  ret = -ENOMEM;
  goto done_unlock;
 }
 param->fault_param->handler = handler;
 param->fault_param->data = data;
 mutex_init(&param->fault_param->lock);
 INIT_LIST_HEAD(&param->fault_param->faults);

done_unlock:
 mutex_unlock(&param->lock);

 return ret;
}
