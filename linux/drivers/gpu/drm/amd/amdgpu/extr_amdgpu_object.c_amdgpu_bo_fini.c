
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aper_size; int aper_base; int vram_mtrr; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int amdgpu_ttm_fini (struct amdgpu_device*) ;
 int arch_io_free_memtype_wc (int ,int ) ;
 int arch_phys_wc_del (int ) ;

void amdgpu_bo_fini(struct amdgpu_device *adev)
{
 amdgpu_ttm_fini(adev);
 arch_phys_wc_del(adev->gmc.vram_mtrr);
 arch_io_free_memtype_wc(adev->gmc.aper_base, adev->gmc.aper_size);
}
