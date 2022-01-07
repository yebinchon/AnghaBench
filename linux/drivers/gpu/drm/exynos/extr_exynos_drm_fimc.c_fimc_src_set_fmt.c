
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int EXYNOS_CIDMAPARAM ;
 int EXYNOS_CIDMAPARAM_R_MODE_64X32 ;
 int EXYNOS_CIDMAPARAM_R_MODE_LINEAR ;
 int EXYNOS_CIDMAPARAM_R_MODE_MASK ;
 int EXYNOS_MSCTRL ;
 int EXYNOS_MSCTRL_INFORMAT_RGB ;
 int EXYNOS_MSCTRL_INFORMAT_YCBCR420 ;
 int EXYNOS_MSCTRL_INFORMAT_YCBCR422 ;
 int EXYNOS_MSCTRL_INFORMAT_YCBCR422_1PLANE ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_src_set_fmt_order (struct fimc_context*,int) ;
 int fimc_write (struct fimc_context*,int,int ) ;

__attribute__((used)) static void fimc_src_set_fmt(struct fimc_context *ctx, u32 fmt, bool tiled)
{
 u32 cfg;

 DRM_DEV_DEBUG_KMS(ctx->dev, "fmt[0x%x]\n", fmt);

 cfg = fimc_read(ctx, EXYNOS_MSCTRL);
 cfg &= ~EXYNOS_MSCTRL_INFORMAT_RGB;

 switch (fmt) {
 case 138:
 case 137:
 case 134:
  cfg |= EXYNOS_MSCTRL_INFORMAT_RGB;
  break;
 case 131:
  cfg |= EXYNOS_MSCTRL_INFORMAT_YCBCR420;
  break;
 case 130:
 case 128:
 case 136:
 case 135:
  cfg |= EXYNOS_MSCTRL_INFORMAT_YCBCR422_1PLANE;
  break;
 case 141:
 case 139:
 case 132:
  cfg |= EXYNOS_MSCTRL_INFORMAT_YCBCR422;
  break;
 case 133:
 case 129:
 case 142:
 case 140:
  cfg |= EXYNOS_MSCTRL_INFORMAT_YCBCR420;
  break;
 }

 fimc_write(ctx, cfg, EXYNOS_MSCTRL);

 cfg = fimc_read(ctx, EXYNOS_CIDMAPARAM);
 cfg &= ~EXYNOS_CIDMAPARAM_R_MODE_MASK;

 if (tiled)
  cfg |= EXYNOS_CIDMAPARAM_R_MODE_64X32;
 else
  cfg |= EXYNOS_CIDMAPARAM_R_MODE_LINEAR;

 fimc_write(ctx, cfg, EXYNOS_CIDMAPARAM);

 fimc_src_set_fmt_order(ctx, fmt);
}
