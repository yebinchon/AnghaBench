
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
 int EXYNOS_CITRGFMT_INROT90_CLOCKWISE ;
 int EXYNOS_MSCTRL ;
 int EXYNOS_MSCTRL_FLIP_X_MIRROR ;
 int EXYNOS_MSCTRL_FLIP_Y_MIRROR ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_write (struct fimc_context*,int,int ) ;

__attribute__((used)) static void fimc_src_set_transf(struct fimc_context *ctx, unsigned int rotation)
{
 unsigned int degree = rotation & DRM_MODE_ROTATE_MASK;
 u32 cfg1, cfg2;

 DRM_DEV_DEBUG_KMS(ctx->dev, "rotation[%x]\n", rotation);

 cfg1 = fimc_read(ctx, EXYNOS_MSCTRL);
 cfg1 &= ~(EXYNOS_MSCTRL_FLIP_X_MIRROR |
  EXYNOS_MSCTRL_FLIP_Y_MIRROR);

 cfg2 = fimc_read(ctx, EXYNOS_CITRGFMT);
 cfg2 &= ~EXYNOS_CITRGFMT_INROT90_CLOCKWISE;

 switch (degree) {
 case 131:
  if (rotation & DRM_MODE_REFLECT_X)
   cfg1 |= EXYNOS_MSCTRL_FLIP_X_MIRROR;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg1 |= EXYNOS_MSCTRL_FLIP_Y_MIRROR;
  break;
 case 128:
  cfg2 |= EXYNOS_CITRGFMT_INROT90_CLOCKWISE;
  if (rotation & DRM_MODE_REFLECT_X)
   cfg1 |= EXYNOS_MSCTRL_FLIP_X_MIRROR;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg1 |= EXYNOS_MSCTRL_FLIP_Y_MIRROR;
  break;
 case 130:
  cfg1 |= (EXYNOS_MSCTRL_FLIP_X_MIRROR |
   EXYNOS_MSCTRL_FLIP_Y_MIRROR);
  if (rotation & DRM_MODE_REFLECT_X)
   cfg1 &= ~EXYNOS_MSCTRL_FLIP_X_MIRROR;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg1 &= ~EXYNOS_MSCTRL_FLIP_Y_MIRROR;
  break;
 case 129:
  cfg1 |= (EXYNOS_MSCTRL_FLIP_X_MIRROR |
   EXYNOS_MSCTRL_FLIP_Y_MIRROR);
  cfg2 |= EXYNOS_CITRGFMT_INROT90_CLOCKWISE;
  if (rotation & DRM_MODE_REFLECT_X)
   cfg1 &= ~EXYNOS_MSCTRL_FLIP_X_MIRROR;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg1 &= ~EXYNOS_MSCTRL_FLIP_Y_MIRROR;
  break;
 }

 fimc_write(ctx, cfg1, EXYNOS_MSCTRL);
 fimc_write(ctx, cfg2, EXYNOS_CITRGFMT);
}
