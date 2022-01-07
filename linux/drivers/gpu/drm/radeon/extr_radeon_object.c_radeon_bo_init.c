
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mc_vram_size; int vram_width; scalar_t__ vram_is_ddr; scalar_t__ aper_size; int aper_base; int vram_mtrr; } ;
struct radeon_device {TYPE_1__ mc; int fastfb_working; } ;


 int DRM_INFO (char*,int,char) ;
 int arch_io_reserve_memtype_wc (int ,scalar_t__) ;
 int arch_phys_wc_add (int ,scalar_t__) ;
 int radeon_ttm_init (struct radeon_device*) ;

int radeon_bo_init(struct radeon_device *rdev)
{

 arch_io_reserve_memtype_wc(rdev->mc.aper_base,
       rdev->mc.aper_size);


 if (!rdev->fastfb_working) {
  rdev->mc.vram_mtrr = arch_phys_wc_add(rdev->mc.aper_base,
            rdev->mc.aper_size);
 }
 DRM_INFO("Detected VRAM RAM=%lluM, BAR=%lluM\n",
  rdev->mc.mc_vram_size >> 20,
  (unsigned long long)rdev->mc.aper_size >> 20);
 DRM_INFO("RAM width %dbits %cDR\n",
   rdev->mc.vram_width, rdev->mc.vram_is_ddr ? 'D' : 'S');
 return radeon_ttm_init(rdev);
}
