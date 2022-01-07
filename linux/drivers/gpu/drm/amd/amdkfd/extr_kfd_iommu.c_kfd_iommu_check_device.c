
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_dev {int pdev; TYPE_1__* device_info; } ;
struct amd_iommu_device_info {int flags; } ;
struct TYPE_2__ {int needs_iommu_device; } ;


 int ENODEV ;
 int amd_iommu_device_info (int ,struct amd_iommu_device_info*) ;
 int required_iommu_flags ;

int kfd_iommu_check_device(struct kfd_dev *kfd)
{
 struct amd_iommu_device_info iommu_info;
 int err;

 if (!kfd->device_info->needs_iommu_device)
  return -ENODEV;

 iommu_info.flags = 0;
 err = amd_iommu_device_info(kfd->pdev, &iommu_info);
 if (err)
  return err;

 if ((iommu_info.flags & required_iommu_flags) != required_iommu_flags)
  return -ENODEV;

 return 0;
}
