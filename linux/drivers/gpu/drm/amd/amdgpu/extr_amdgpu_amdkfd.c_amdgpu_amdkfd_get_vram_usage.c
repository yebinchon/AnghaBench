
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_3__ {int * man; } ;
struct TYPE_4__ {TYPE_1__ bdev; } ;
struct amdgpu_device {TYPE_2__ mman; } ;


 size_t TTM_PL_VRAM ;
 int amdgpu_vram_mgr_usage (int *) ;

uint64_t amdgpu_amdkfd_get_vram_usage(struct kgd_dev *kgd)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;

 return amdgpu_vram_mgr_usage(&adev->mman.bdev.man[TTM_PL_VRAM]);
}
