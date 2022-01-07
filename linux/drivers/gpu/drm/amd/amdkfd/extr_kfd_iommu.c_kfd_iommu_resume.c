
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_dev {int pdev; TYPE_1__* device_info; } ;
struct TYPE_2__ {int needs_iommu_device; } ;


 int ENXIO ;
 int amd_iommu_free_device (int ) ;
 int amd_iommu_init_device (int ,unsigned int) ;
 int amd_iommu_set_invalid_ppr_cb (int ,int *) ;
 int amd_iommu_set_invalidate_ctx_cb (int ,int *) ;
 int * iommu_invalid_ppr_cb ;
 int * iommu_pasid_shutdown_callback ;
 int kfd_bind_processes_to_device (struct kfd_dev*) ;
 unsigned int kfd_get_pasid_limit () ;

int kfd_iommu_resume(struct kfd_dev *kfd)
{
 unsigned int pasid_limit;
 int err;

 if (!kfd->device_info->needs_iommu_device)
  return 0;

 pasid_limit = kfd_get_pasid_limit();

 err = amd_iommu_init_device(kfd->pdev, pasid_limit);
 if (err)
  return -ENXIO;

 amd_iommu_set_invalidate_ctx_cb(kfd->pdev,
     iommu_pasid_shutdown_callback);
 amd_iommu_set_invalid_ppr_cb(kfd->pdev,
         iommu_invalid_ppr_cb);

 err = kfd_bind_processes_to_device(kfd);
 if (err) {
  amd_iommu_set_invalidate_ctx_cb(kfd->pdev, ((void*)0));
  amd_iommu_set_invalid_ppr_cb(kfd->pdev, ((void*)0));
  amd_iommu_free_device(kfd->pdev);
  return err;
 }

 return 0;
}
