
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int C_0003C2_VGA_RAM_EN ;
 int RREG8 (int ) ;
 int R_0003C2_GENMO_WT ;
 int WREG8 (int ,int) ;

void r100_vga_render_disable(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG8(R_0003C2_GENMO_WT);
 WREG8(R_0003C2_GENMO_WT, C_0003C2_VGA_RAM_EN & tmp);
}
