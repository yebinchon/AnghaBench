
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int EXYNOS_CIOCTRL ;
 int EXYNOS_CIOCTRL_ALPHA_OUT ;
 int EXYNOS_CIOCTRL_ORDER2P_LSB_CBCR ;
 int EXYNOS_CIOCTRL_ORDER2P_LSB_CRCB ;
 int EXYNOS_CIOCTRL_ORDER2P_MASK ;
 int EXYNOS_CIOCTRL_ORDER422_CBYCRY ;
 int EXYNOS_CIOCTRL_ORDER422_CRYCBY ;
 int EXYNOS_CIOCTRL_ORDER422_MASK ;
 int EXYNOS_CIOCTRL_ORDER422_YCBYCR ;
 int EXYNOS_CIOCTRL_ORDER422_YCRYCB ;
 int EXYNOS_CIOCTRL_YCBCR_2PLANE ;
 int EXYNOS_CIOCTRL_YCBCR_3PLANE ;
 int EXYNOS_CIOCTRL_YCBCR_PLANE_MASK ;
 int EXYNOS_CISCCTRL ;
 int EXYNOS_CISCCTRL_EXTRGB_EXTENSION ;
 int EXYNOS_CISCCTRL_OUTRGB_FMT_RGB565 ;
 int EXYNOS_CISCCTRL_OUTRGB_FMT_RGB888 ;
 int EXYNOS_CISCCTRL_OUTRGB_FMT_RGB_MASK ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_write (struct fimc_context*,int,int ) ;

__attribute__((used)) static void fimc_dst_set_fmt_order(struct fimc_context *ctx, u32 fmt)
{
 u32 cfg;

 DRM_DEV_DEBUG_KMS(ctx->dev, "fmt[0x%x]\n", fmt);


 cfg = fimc_read(ctx, EXYNOS_CISCCTRL);
 cfg &= ~EXYNOS_CISCCTRL_OUTRGB_FMT_RGB_MASK;

 switch (fmt) {
 case 137:
  cfg |= EXYNOS_CISCCTRL_OUTRGB_FMT_RGB565;
  fimc_write(ctx, cfg, EXYNOS_CISCCTRL);
  return;
 case 136:
  cfg |= EXYNOS_CISCCTRL_OUTRGB_FMT_RGB888;
  fimc_write(ctx, cfg, EXYNOS_CISCCTRL);
  return;
 case 133:
  cfg |= (EXYNOS_CISCCTRL_OUTRGB_FMT_RGB888 |
   EXYNOS_CISCCTRL_EXTRGB_EXTENSION);
  fimc_write(ctx, cfg, EXYNOS_CISCCTRL);
  break;
 default:

  break;
 }


 cfg = fimc_read(ctx, EXYNOS_CIOCTRL);
 cfg &= ~(EXYNOS_CIOCTRL_ORDER2P_MASK |
  EXYNOS_CIOCTRL_ORDER422_MASK |
  EXYNOS_CIOCTRL_YCBCR_PLANE_MASK);

 switch (fmt) {
 case 133:
  cfg |= EXYNOS_CIOCTRL_ALPHA_OUT;
  break;
 case 130:
  cfg |= EXYNOS_CIOCTRL_ORDER422_YCBYCR;
  break;
 case 128:
  cfg |= EXYNOS_CIOCTRL_ORDER422_YCRYCB;
  break;
 case 135:
  cfg |= EXYNOS_CIOCTRL_ORDER422_CBYCRY;
  break;
 case 134:
  cfg |= EXYNOS_CIOCTRL_ORDER422_CRYCBY;
  break;
 case 139:
 case 138:
  cfg |= EXYNOS_CIOCTRL_ORDER2P_LSB_CRCB;
  cfg |= EXYNOS_CIOCTRL_YCBCR_2PLANE;
  break;
 case 131:
 case 132:
 case 129:
  cfg |= EXYNOS_CIOCTRL_YCBCR_3PLANE;
  break;
 case 141:
 case 140:
  cfg |= EXYNOS_CIOCTRL_ORDER2P_LSB_CBCR;
  cfg |= EXYNOS_CIOCTRL_YCBCR_2PLANE;
  break;
 }

 fimc_write(ctx, cfg, EXYNOS_CIOCTRL);
}
