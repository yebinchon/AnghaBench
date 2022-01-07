
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int EXYNOS_CIOCTRL ;
 int EXYNOS_CIOCTRL_LASTENDEN ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_write (struct fimc_context*,int ,int ) ;

__attribute__((used)) static void fimc_handle_lastend(struct fimc_context *ctx, bool enable)
{
 u32 cfg;

 DRM_DEV_DEBUG_KMS(ctx->dev, "enable[%d]\n", enable);

 cfg = fimc_read(ctx, EXYNOS_CIOCTRL);
 if (enable)
  cfg |= EXYNOS_CIOCTRL_LASTENDEN;
 else
  cfg &= ~EXYNOS_CIOCTRL_LASTENDEN;

 fimc_write(ctx, cfg, EXYNOS_CIOCTRL);
}
