
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ family; } ;


 scalar_t__ CHIP_RV530 ;
 int R300_DST_PIPE_CONFIG ;
 int R400_GB_PIPE_SELECT ;
 unsigned int RREG32 (int ) ;
 int WREG32 (int,int) ;
 int WREG32_PLL (int,unsigned int) ;
 int pr_warn (char*) ;
 int r420_pipes_init (struct radeon_device*) ;
 scalar_t__ r520_mc_wait_for_idle (struct radeon_device*) ;
 int rv515_vga_render_disable (struct radeon_device*) ;

__attribute__((used)) static void r520_gpu_init(struct radeon_device *rdev)
{
 unsigned pipe_select_current, gb_pipe_select, tmp;

 rv515_vga_render_disable(rdev);
 if (rdev->family == CHIP_RV530) {
  WREG32(0x4128, 0xFF);
 }
 r420_pipes_init(rdev);
 gb_pipe_select = RREG32(R400_GB_PIPE_SELECT);
 tmp = RREG32(R300_DST_PIPE_CONFIG);
 pipe_select_current = (tmp >> 2) & 3;
 tmp = (1 << pipe_select_current) |
       (((gb_pipe_select >> 8) & 0xF) << 4);
 WREG32_PLL(0x000D, tmp);
 if (r520_mc_wait_for_idle(rdev)) {
  pr_warn("Failed to wait MC idle while programming pipes. Bad things might happen.\n");
 }
}
