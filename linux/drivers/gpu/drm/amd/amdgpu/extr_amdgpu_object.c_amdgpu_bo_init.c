
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mc_vram_size; int vram_width; size_t vram_type; scalar_t__ aper_size; int aper_base; int vram_mtrr; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int DRM_INFO (char*,int,unsigned long long) ;
 int amdgpu_ttm_init (struct amdgpu_device*) ;
 unsigned long long* amdgpu_vram_names ;
 int arch_io_reserve_memtype_wc (int ,scalar_t__) ;
 int arch_phys_wc_add (int ,scalar_t__) ;

int amdgpu_bo_init(struct amdgpu_device *adev)
{

 arch_io_reserve_memtype_wc(adev->gmc.aper_base,
       adev->gmc.aper_size);


 adev->gmc.vram_mtrr = arch_phys_wc_add(adev->gmc.aper_base,
           adev->gmc.aper_size);
 DRM_INFO("Detected VRAM RAM=%lluM, BAR=%lluM\n",
   adev->gmc.mc_vram_size >> 20,
   (unsigned long long)adev->gmc.aper_size >> 20);
 DRM_INFO("RAM width %dbits %s\n",
   adev->gmc.vram_width, amdgpu_vram_names[adev->gmc.vram_type]);
 return amdgpu_ttm_init(adev);
}
