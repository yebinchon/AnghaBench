
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aper_size; int aper_base; int vram_mtrr; } ;
struct radeon_device {TYPE_1__ mc; } ;


 int arch_io_free_memtype_wc (int ,int ) ;
 int arch_phys_wc_del (int ) ;
 int radeon_ttm_fini (struct radeon_device*) ;

void radeon_bo_fini(struct radeon_device *rdev)
{
 radeon_ttm_fini(rdev);
 arch_phys_wc_del(rdev->mc.vram_mtrr);
 arch_io_free_memtype_wc(rdev->mc.aper_base, rdev->mc.aper_size);
}
