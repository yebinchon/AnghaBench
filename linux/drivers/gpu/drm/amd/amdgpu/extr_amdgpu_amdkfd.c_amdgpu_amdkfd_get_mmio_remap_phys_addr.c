
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_2__ {int bus_addr; } ;
struct amdgpu_device {TYPE_1__ rmmio_remap; } ;



uint64_t amdgpu_amdkfd_get_mmio_remap_phys_addr(struct kgd_dev *kgd)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;

 return adev->rmmio_remap.bus_addr;
}
