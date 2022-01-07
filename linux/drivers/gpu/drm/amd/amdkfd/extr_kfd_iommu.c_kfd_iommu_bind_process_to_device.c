
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_process_device {scalar_t__ bound; struct kfd_process* process; struct kfd_dev* dev; } ;
struct kfd_process {int lead_thread; int pasid; } ;
struct kfd_dev {int pdev; TYPE_1__* device_info; } ;
struct TYPE_2__ {int needs_iommu_device; } ;


 int EINVAL ;
 scalar_t__ PDD_BOUND ;
 scalar_t__ PDD_BOUND_SUSPENDED ;
 int amd_iommu_bind_pasid (int ,int ,int ) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;

int kfd_iommu_bind_process_to_device(struct kfd_process_device *pdd)
{
 struct kfd_dev *dev = pdd->dev;
 struct kfd_process *p = pdd->process;
 int err;

 if (!dev->device_info->needs_iommu_device || pdd->bound == PDD_BOUND)
  return 0;

 if (unlikely(pdd->bound == PDD_BOUND_SUSPENDED)) {
  pr_err("Binding PDD_BOUND_SUSPENDED pdd is unexpected!\n");
  return -EINVAL;
 }

 err = amd_iommu_bind_pasid(dev->pdev, p->pasid, p->lead_thread);
 if (!err)
  pdd->bound = PDD_BOUND;

 return err;
}
