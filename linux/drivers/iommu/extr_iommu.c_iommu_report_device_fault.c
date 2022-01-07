
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iommu_param {int lock; struct iommu_fault_param* fault_param; } ;
struct iommu_fault_param {int (* handler ) (TYPE_2__*,int ) ;int lock; int data; int faults; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ prm; } ;
struct iommu_fault_event {int list; TYPE_2__ fault; } ;
struct device {struct iommu_param* iommu_param; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IOMMU_FAULT_PAGE_REQ ;
 int IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE ;
 int kfree (struct iommu_fault_event*) ;
 struct iommu_fault_event* kmemdup (struct iommu_fault_event*,int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,int ) ;

int iommu_report_device_fault(struct device *dev, struct iommu_fault_event *evt)
{
 struct iommu_param *param = dev->iommu_param;
 struct iommu_fault_event *evt_pending = ((void*)0);
 struct iommu_fault_param *fparam;
 int ret = 0;

 if (!param || !evt)
  return -EINVAL;


 mutex_lock(&param->lock);
 fparam = param->fault_param;
 if (!fparam || !fparam->handler) {
  ret = -EINVAL;
  goto done_unlock;
 }

 if (evt->fault.type == IOMMU_FAULT_PAGE_REQ &&
     (evt->fault.prm.flags & IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE)) {
  evt_pending = kmemdup(evt, sizeof(struct iommu_fault_event),
          GFP_KERNEL);
  if (!evt_pending) {
   ret = -ENOMEM;
   goto done_unlock;
  }
  mutex_lock(&fparam->lock);
  list_add_tail(&evt_pending->list, &fparam->faults);
  mutex_unlock(&fparam->lock);
 }

 ret = fparam->handler(&evt->fault, fparam->data);
 if (ret && evt_pending) {
  mutex_lock(&fparam->lock);
  list_del(&evt_pending->list);
  mutex_unlock(&fparam->lock);
  kfree(evt_pending);
 }
done_unlock:
 mutex_unlock(&param->lock);
 return ret;
}
