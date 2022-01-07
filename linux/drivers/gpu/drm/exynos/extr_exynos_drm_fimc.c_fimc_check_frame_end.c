
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int EXYNOS_CISTATUS ;
 int EXYNOS_CISTATUS_FRAMEEND ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_write (struct fimc_context*,int,int ) ;

__attribute__((used)) static bool fimc_check_frame_end(struct fimc_context *ctx)
{
 u32 cfg;

 cfg = fimc_read(ctx, EXYNOS_CISTATUS);

 DRM_DEV_DEBUG_KMS(ctx->dev, "cfg[0x%x]\n", cfg);

 if (!(cfg & EXYNOS_CISTATUS_FRAMEEND))
  return 0;

 cfg &= ~(EXYNOS_CISTATUS_FRAMEEND);
 fimc_write(ctx, cfg, EXYNOS_CISTATUS);

 return 1;
}
