
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_device {scalar_t__ family; int num_gb_pipes; int num_z_pipes; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 scalar_t__ CHIP_R300 ;
 scalar_t__ CHIP_R350 ;
 int DRM_INFO (char*,int,int) ;
 int R300_DC_AUTOFLUSH_ENABLE ;
 int R300_DC_DC_DISABLE_IGNORE_PE ;
 int R300_DST_PIPE_CONFIG ;
 int R300_ENABLE_TILING ;
 int R300_GB_TILE_CONFIG ;
 int R300_PIPE_AUTO_CONFIG ;
 int R300_PIPE_COUNT_R300 ;
 int R300_PIPE_COUNT_R420 ;
 int R300_PIPE_COUNT_R420_3P ;
 int R300_PIPE_COUNT_RV350 ;
 int R300_RB2D_DSTCACHE_MODE ;
 int R300_TILE_SIZE_16 ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int pr_warn (char*) ;
 scalar_t__ r100_gui_wait_for_idle (struct radeon_device*) ;
 scalar_t__ r300_mc_wait_for_idle (struct radeon_device*) ;

__attribute__((used)) static void r300_gpu_init(struct radeon_device *rdev)
{
 uint32_t gb_tile_config, tmp;

 if ((rdev->family == CHIP_R300 && rdev->pdev->device != 0x4144) ||
     (rdev->family == CHIP_R350 && rdev->pdev->device != 0x4148)) {

  rdev->num_gb_pipes = 2;
 } else {

  rdev->num_gb_pipes = 1;
 }
 rdev->num_z_pipes = 1;
 gb_tile_config = (R300_ENABLE_TILING | R300_TILE_SIZE_16);
 switch (rdev->num_gb_pipes) {
 case 2:
  gb_tile_config |= R300_PIPE_COUNT_R300;
  break;
 case 3:
  gb_tile_config |= R300_PIPE_COUNT_R420_3P;
  break;
 case 4:
  gb_tile_config |= R300_PIPE_COUNT_R420;
  break;
 default:
 case 1:
  gb_tile_config |= R300_PIPE_COUNT_RV350;
  break;
 }
 WREG32(R300_GB_TILE_CONFIG, gb_tile_config);

 if (r100_gui_wait_for_idle(rdev)) {
  pr_warn("Failed to wait GUI idle while programming pipes. Bad things might happen.\n");
 }

 tmp = RREG32(R300_DST_PIPE_CONFIG);
 WREG32(R300_DST_PIPE_CONFIG, tmp | R300_PIPE_AUTO_CONFIG);

 WREG32(R300_RB2D_DSTCACHE_MODE,
        R300_DC_AUTOFLUSH_ENABLE |
        R300_DC_DC_DISABLE_IGNORE_PE);

 if (r100_gui_wait_for_idle(rdev)) {
  pr_warn("Failed to wait GUI idle while programming pipes. Bad things might happen.\n");
 }
 if (r300_mc_wait_for_idle(rdev)) {
  pr_warn("Failed to wait MC idle while programming pipes. Bad things might happen.\n");
 }
 DRM_INFO("radeon: %d quad pipes, %d Z pipes initialized\n",
   rdev->num_gb_pipes, rdev->num_z_pipes);
}
