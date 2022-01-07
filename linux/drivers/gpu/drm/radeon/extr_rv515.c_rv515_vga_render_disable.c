
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int C_000300_VGA_VSTATUS_CNTL ;
 int RREG32 (int ) ;
 int R_000300_VGA_RENDER_CONTROL ;
 int WREG32 (int ,int) ;

void rv515_vga_render_disable(struct radeon_device *rdev)
{
 WREG32(R_000300_VGA_RENDER_CONTROL,
  RREG32(R_000300_VGA_RENDER_CONTROL) & C_000300_VGA_VSTATUS_CNTL);
}
