
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_local_mem_info {scalar_t__ local_mem_size_private; scalar_t__ local_mem_size_public; } ;
struct kfd_dev {int kgd; TYPE_1__* device_info; } ;
struct TYPE_2__ {scalar_t__ needs_iommu_device; } ;


 int amdgpu_amdkfd_get_local_mem_info (int ,struct kfd_local_mem_info*) ;
 scalar_t__ debug_largebar ;
 int pr_debug (char*) ;

bool kfd_dev_is_large_bar(struct kfd_dev *dev)
{
 struct kfd_local_mem_info mem_info;

 if (debug_largebar) {
  pr_debug("Simulate large-bar allocation on non large-bar machine\n");
  return 1;
 }

 if (dev->device_info->needs_iommu_device)
  return 0;

 amdgpu_amdkfd_get_local_mem_info(dev->kgd, &mem_info);
 if (mem_info.local_mem_size_private == 0 &&
   mem_info.local_mem_size_public > 0)
  return 1;
 return 0;
}
