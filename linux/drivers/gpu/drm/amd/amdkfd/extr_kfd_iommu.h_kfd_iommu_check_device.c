
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int kfd_iommu_check_device(struct kfd_dev *kfd)
{
 return -ENODEV;
}
