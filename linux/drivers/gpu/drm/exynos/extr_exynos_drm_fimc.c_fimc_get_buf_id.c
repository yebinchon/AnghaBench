
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int,...) ;
 int DRM_DEV_ERROR (int ,char*) ;
 int EIO ;
 int EXYNOS_CISTATUS2 ;
 int EXYNOS_CISTATUS2_GET_FRAMECOUNT_BEFORE (int ) ;
 int EXYNOS_CISTATUS2_GET_FRAMECOUNT_PRESENT (int ) ;
 int fimc_read (struct fimc_context*,int ) ;

__attribute__((used)) static int fimc_get_buf_id(struct fimc_context *ctx)
{
 u32 cfg;
 int frame_cnt, buf_id;

 cfg = fimc_read(ctx, EXYNOS_CISTATUS2);
 frame_cnt = EXYNOS_CISTATUS2_GET_FRAMECOUNT_BEFORE(cfg);

 if (frame_cnt == 0)
  frame_cnt = EXYNOS_CISTATUS2_GET_FRAMECOUNT_PRESENT(cfg);

 DRM_DEV_DEBUG_KMS(ctx->dev, "present[%d]before[%d]\n",
     EXYNOS_CISTATUS2_GET_FRAMECOUNT_PRESENT(cfg),
     EXYNOS_CISTATUS2_GET_FRAMECOUNT_BEFORE(cfg));

 if (frame_cnt == 0) {
  DRM_DEV_ERROR(ctx->dev, "failed to get frame count.\n");
  return -EIO;
 }

 buf_id = frame_cnt - 1;
 DRM_DEV_DEBUG_KMS(ctx->dev, "buf_id[%d]\n", buf_id);

 return buf_id;
}
