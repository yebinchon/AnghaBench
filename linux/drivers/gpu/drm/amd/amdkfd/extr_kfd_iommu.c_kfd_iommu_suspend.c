
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_dev {int pdev; TYPE_1__* device_info; } ;
struct TYPE_2__ {int needs_iommu_device; } ;


 int amd_iommu_free_device (int ) ;
 int amd_iommu_set_invalid_ppr_cb (int ,int *) ;
 int amd_iommu_set_invalidate_ctx_cb (int ,int *) ;
 int kfd_unbind_processes_from_device (struct kfd_dev*) ;

void kfd_iommu_suspend(struct kfd_dev *kfd)
{
 if (!kfd->device_info->needs_iommu_device)
  return;

 kfd_unbind_processes_from_device(kfd);

 amd_iommu_set_invalidate_ctx_cb(kfd->pdev, ((void*)0));
 amd_iommu_set_invalid_ppr_cb(kfd->pdev, ((void*)0));
 amd_iommu_free_device(kfd->pdev);
}
