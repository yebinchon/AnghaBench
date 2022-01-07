
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {scalar_t__ family; TYPE_1__* surface_regs; } ;
struct TYPE_2__ {scalar_t__ bo; } ;


 scalar_t__ CHIP_R600 ;
 int RADEON_GEM_MAX_SURFACES ;
 int RADEON_SURFACE_CNTL ;
 int WREG32 (int ,int ) ;
 int radeon_bo_get_surface_reg (scalar_t__) ;
 int radeon_clear_surface_reg (struct radeon_device*,int) ;

void radeon_surface_init(struct radeon_device *rdev)
{

 if (rdev->family < CHIP_R600) {
  int i;

  for (i = 0; i < RADEON_GEM_MAX_SURFACES; i++) {
   if (rdev->surface_regs[i].bo)
    radeon_bo_get_surface_reg(rdev->surface_regs[i].bo);
   else
    radeon_clear_surface_reg(rdev, i);
  }

  WREG32(RADEON_SURFACE_CNTL, 0);
 }
}
