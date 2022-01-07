
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,unsigned int) ;
 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_REFLECT_Y ;




 unsigned int DRM_MODE_ROTATE_MASK ;
 int EXYNOS_CITRGFMT ;
 int EXYNOS_CITRGFMT_FLIP_MASK ;
 int EXYNOS_CITRGFMT_FLIP_X_MIRROR ;
 int EXYNOS_CITRGFMT_FLIP_Y_MIRROR ;
 int EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_write (struct fimc_context*,int,int ) ;

__attribute__((used)) static void fimc_dst_set_transf(struct fimc_context *ctx, unsigned int rotation)
{
 unsigned int degree = rotation & DRM_MODE_ROTATE_MASK;
 u32 cfg;

 DRM_DEV_DEBUG_KMS(ctx->dev, "rotation[0x%x]\n", rotation);

 cfg = fimc_read(ctx, EXYNOS_CITRGFMT);
 cfg &= ~EXYNOS_CITRGFMT_FLIP_MASK;
 cfg &= ~EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE;

 switch (degree) {
 case 131:
  if (rotation & DRM_MODE_REFLECT_X)
   cfg |= EXYNOS_CITRGFMT_FLIP_X_MIRROR;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg |= EXYNOS_CITRGFMT_FLIP_Y_MIRROR;
  break;
 case 128:
  cfg |= EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE;
  if (rotation & DRM_MODE_REFLECT_X)
   cfg |= EXYNOS_CITRGFMT_FLIP_X_MIRROR;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg |= EXYNOS_CITRGFMT_FLIP_Y_MIRROR;
  break;
 case 130:
  cfg |= (EXYNOS_CITRGFMT_FLIP_X_MIRROR |
   EXYNOS_CITRGFMT_FLIP_Y_MIRROR);
  if (rotation & DRM_MODE_REFLECT_X)
   cfg &= ~EXYNOS_CITRGFMT_FLIP_X_MIRROR;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg &= ~EXYNOS_CITRGFMT_FLIP_Y_MIRROR;
  break;
 case 129:
  cfg |= (EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE |
   EXYNOS_CITRGFMT_FLIP_X_MIRROR |
   EXYNOS_CITRGFMT_FLIP_Y_MIRROR);
  if (rotation & DRM_MODE_REFLECT_X)
   cfg &= ~EXYNOS_CITRGFMT_FLIP_X_MIRROR;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg &= ~EXYNOS_CITRGFMT_FLIP_Y_MIRROR;
  break;
 }

 fimc_write(ctx, cfg, EXYNOS_CITRGFMT);
}
