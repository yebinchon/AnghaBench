
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int DRM_FORMAT_AYUV ;
 int EXYNOS_CIDMAPARAM ;
 int EXYNOS_CIDMAPARAM_W_MODE_64X32 ;
 int EXYNOS_CIDMAPARAM_W_MODE_LINEAR ;
 int EXYNOS_CIDMAPARAM_W_MODE_MASK ;
 int EXYNOS_CIEXTEN ;
 int EXYNOS_CIEXTEN_YUV444_OUT ;
 int EXYNOS_CITRGFMT ;
 int EXYNOS_CITRGFMT_OUTFORMAT_MASK ;
 int EXYNOS_CITRGFMT_OUTFORMAT_RGB ;
 int EXYNOS_CITRGFMT_OUTFORMAT_YCBCR420 ;
 int EXYNOS_CITRGFMT_OUTFORMAT_YCBCR422 ;
 int EXYNOS_CITRGFMT_OUTFORMAT_YCBCR422_1PLANE ;
 int fimc_dst_set_fmt_order (struct fimc_context*,int) ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_write (struct fimc_context*,int,int ) ;

__attribute__((used)) static void fimc_dst_set_fmt(struct fimc_context *ctx, u32 fmt, bool tiled)
{
 u32 cfg;

 DRM_DEV_DEBUG_KMS(ctx->dev, "fmt[0x%x]\n", fmt);

 cfg = fimc_read(ctx, EXYNOS_CIEXTEN);

 if (fmt == DRM_FORMAT_AYUV) {
  cfg |= EXYNOS_CIEXTEN_YUV444_OUT;
  fimc_write(ctx, cfg, EXYNOS_CIEXTEN);
 } else {
  cfg &= ~EXYNOS_CIEXTEN_YUV444_OUT;
  fimc_write(ctx, cfg, EXYNOS_CIEXTEN);

  cfg = fimc_read(ctx, EXYNOS_CITRGFMT);
  cfg &= ~EXYNOS_CITRGFMT_OUTFORMAT_MASK;

  switch (fmt) {
  case 137:
  case 136:
  case 133:
   cfg |= EXYNOS_CITRGFMT_OUTFORMAT_RGB;
   break;
  case 130:
  case 128:
  case 135:
  case 134:
   cfg |= EXYNOS_CITRGFMT_OUTFORMAT_YCBCR422_1PLANE;
   break;
  case 140:
  case 138:
  case 131:
   cfg |= EXYNOS_CITRGFMT_OUTFORMAT_YCBCR422;
   break;
  case 132:
  case 129:
  case 141:
  case 139:
   cfg |= EXYNOS_CITRGFMT_OUTFORMAT_YCBCR420;
   break;
  }

  fimc_write(ctx, cfg, EXYNOS_CITRGFMT);
 }

 cfg = fimc_read(ctx, EXYNOS_CIDMAPARAM);
 cfg &= ~EXYNOS_CIDMAPARAM_W_MODE_MASK;

 if (tiled)
  cfg |= EXYNOS_CIDMAPARAM_W_MODE_64X32;
 else
  cfg |= EXYNOS_CIDMAPARAM_W_MODE_LINEAR;

 fimc_write(ctx, cfg, EXYNOS_CIDMAPARAM);

 fimc_dst_set_fmt_order(ctx, fmt);
}
