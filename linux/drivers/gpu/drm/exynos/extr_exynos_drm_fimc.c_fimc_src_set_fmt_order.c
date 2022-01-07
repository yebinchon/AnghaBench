
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int EXYNOS_CISCCTRL ;
 int EXYNOS_CISCCTRL_INRGB_FMT_RGB565 ;
 int EXYNOS_CISCCTRL_INRGB_FMT_RGB888 ;
 int EXYNOS_CISCCTRL_INRGB_FMT_RGB_MASK ;
 int EXYNOS_MSCTRL ;
 int EXYNOS_MSCTRL_C_INT_IN_2PLANE ;
 int EXYNOS_MSCTRL_C_INT_IN_3PLANE ;
 int EXYNOS_MSCTRL_ORDER2P_LSB_CBCR ;
 int EXYNOS_MSCTRL_ORDER2P_LSB_CRCB ;
 int EXYNOS_MSCTRL_ORDER2P_SHIFT_MASK ;
 int EXYNOS_MSCTRL_ORDER422_CBYCRY ;
 int EXYNOS_MSCTRL_ORDER422_CRYCBY ;
 int EXYNOS_MSCTRL_ORDER422_YCBYCR ;
 int EXYNOS_MSCTRL_ORDER422_YCRYCB ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_write (struct fimc_context*,int,int ) ;

__attribute__((used)) static void fimc_src_set_fmt_order(struct fimc_context *ctx, u32 fmt)
{
 u32 cfg;

 DRM_DEV_DEBUG_KMS(ctx->dev, "fmt[0x%x]\n", fmt);


 cfg = fimc_read(ctx, EXYNOS_CISCCTRL);
 cfg &= ~EXYNOS_CISCCTRL_INRGB_FMT_RGB_MASK;

 switch (fmt) {
 case 138:
  cfg |= EXYNOS_CISCCTRL_INRGB_FMT_RGB565;
  fimc_write(ctx, cfg, EXYNOS_CISCCTRL);
  return;
 case 137:
 case 134:
  cfg |= EXYNOS_CISCCTRL_INRGB_FMT_RGB888;
  fimc_write(ctx, cfg, EXYNOS_CISCCTRL);
  return;
 default:

  break;
 }


 cfg = fimc_read(ctx, EXYNOS_MSCTRL);
 cfg &= ~(EXYNOS_MSCTRL_ORDER2P_SHIFT_MASK |
  EXYNOS_MSCTRL_C_INT_IN_2PLANE |
  EXYNOS_MSCTRL_ORDER422_YCBYCR);

 switch (fmt) {
 case 130:
  cfg |= EXYNOS_MSCTRL_ORDER422_YCBYCR;
  break;
 case 128:
  cfg |= EXYNOS_MSCTRL_ORDER422_YCRYCB;
  break;
 case 136:
  cfg |= EXYNOS_MSCTRL_ORDER422_CBYCRY;
  break;
 case 135:
 case 131:
  cfg |= EXYNOS_MSCTRL_ORDER422_CRYCBY;
  break;
 case 140:
 case 139:
  cfg |= (EXYNOS_MSCTRL_ORDER2P_LSB_CRCB |
   EXYNOS_MSCTRL_C_INT_IN_2PLANE);
  break;
 case 132:
 case 133:
 case 129:
  cfg |= EXYNOS_MSCTRL_C_INT_IN_3PLANE;
  break;
 case 142:
 case 141:
  cfg |= (EXYNOS_MSCTRL_ORDER2P_LSB_CBCR |
   EXYNOS_MSCTRL_C_INT_IN_2PLANE);
  break;
 }

 fimc_write(ctx, cfg, EXYNOS_MSCTRL);
}
