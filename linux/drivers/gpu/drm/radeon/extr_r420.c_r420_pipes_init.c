
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {unsigned int num_gb_pipes; scalar_t__ family; int num_z_pipes; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 scalar_t__ CHIP_RV530 ;
 int DRM_INFO (char*,unsigned int,int) ;
 unsigned int R300_DC_AUTOFLUSH_ENABLE ;
 unsigned int R300_DC_DC_DISABLE_IGNORE_PE ;
 int R300_DST_PIPE_CONFIG ;
 unsigned int R300_ENABLE_TILING ;
 int R300_GA_DEADLOCK_CNTL ;
 int R300_GA_ENHANCE ;
 int R300_GA_FASTSYNC_CNTL ;
 int R300_GB_TILE_CONFIG ;
 unsigned int R300_PIPE_AUTO_CONFIG ;
 int R300_RB2D_DSTCACHE_MODE ;
 unsigned int R300_TILE_SIZE_16 ;
 int R400_GB_PIPE_SELECT ;
 int R500_SU_REG_DEST ;
 unsigned int RREG32 (int ) ;
 int RV530_GB_PIPE_SELECT2 ;
 int WREG32 (int ,unsigned int) ;
 int pr_warn (char*) ;
 scalar_t__ r100_gui_wait_for_idle (struct radeon_device*) ;

void r420_pipes_init(struct radeon_device *rdev)
{
 unsigned tmp;
 unsigned gb_pipe_select;
 unsigned num_pipes;


 WREG32(R300_GA_ENHANCE, R300_GA_DEADLOCK_CNTL | R300_GA_FASTSYNC_CNTL |
        (1 << 2) | (1 << 3));

 if (r100_gui_wait_for_idle(rdev)) {
  pr_warn("Failed to wait GUI idle while programming pipes. Bad things might happen.\n");
 }

 gb_pipe_select = RREG32(R400_GB_PIPE_SELECT);
 num_pipes = ((gb_pipe_select >> 12) & 3) + 1;


 if ((rdev->pdev->device == 0x5e4c) ||
     (rdev->pdev->device == 0x5e4f))
  num_pipes = 1;

 rdev->num_gb_pipes = num_pipes;
 tmp = 0;
 switch (num_pipes) {
 default:

  num_pipes = 1;

 case 1:
  tmp = (0 << 1);
  break;
 case 2:
  tmp = (3 << 1);
  break;
 case 3:
  tmp = (6 << 1);
  break;
 case 4:
  tmp = (7 << 1);
  break;
 }
 WREG32(R500_SU_REG_DEST, (1 << num_pipes) - 1);

 tmp |= R300_TILE_SIZE_16 | R300_ENABLE_TILING;
 WREG32(R300_GB_TILE_CONFIG, tmp);
 if (r100_gui_wait_for_idle(rdev)) {
  pr_warn("Failed to wait GUI idle while programming pipes. Bad things might happen.\n");
 }

 tmp = RREG32(R300_DST_PIPE_CONFIG);
 WREG32(R300_DST_PIPE_CONFIG, tmp | R300_PIPE_AUTO_CONFIG);

 WREG32(R300_RB2D_DSTCACHE_MODE,
        RREG32(R300_RB2D_DSTCACHE_MODE) |
        R300_DC_AUTOFLUSH_ENABLE |
        R300_DC_DC_DISABLE_IGNORE_PE);

 if (r100_gui_wait_for_idle(rdev)) {
  pr_warn("Failed to wait GUI idle while programming pipes. Bad things might happen.\n");
 }

 if (rdev->family == CHIP_RV530) {
  tmp = RREG32(RV530_GB_PIPE_SELECT2);
  if ((tmp & 3) == 3)
   rdev->num_z_pipes = 2;
  else
   rdev->num_z_pipes = 1;
 } else
  rdev->num_z_pipes = 1;

 DRM_INFO("radeon: %d quad pipes, %d z pipes initialized.\n",
   rdev->num_gb_pipes, rdev->num_z_pipes);
}
