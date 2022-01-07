
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vc4_dsi_encoder {struct vc4_dsi* dsi; } ;
struct vc4_dsi {int port; unsigned long divider; int lanes; int mode_flags; int format; int regset; TYPE_3__* pdev; int bridge; int pixel_clock; int pll_phy_clock; int escape_clock; } ;
struct drm_printer {int dummy; } ;
struct drm_encoder {TYPE_2__* crtc; } ;
struct drm_display_mode {int clock; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; } ;


 int CTRL ;
 int CTRL_RESET_FIFOS ;
 int DISP0_CTRL ;
 int DISP1_CTRL ;
 int DIV_ROUND_UP (int,unsigned long) ;
 int DRM_ERROR (char*,int) ;
 int DSI0_CTRL_CTRL0 ;
 int DSI0_PHYC_ESC_CLK_LPDT ;
 int DSI0_PHY_AFEC0_PD_DLANE1 ;
 int DSI0_PHY_AFEC0_RESET ;
 int DSI0_PHY_AFEC1_IDR_CLANE ;
 int DSI0_PHY_AFEC1_IDR_DLANE0 ;
 int DSI0_PHY_AFEC1_IDR_DLANE1 ;
 int DSI1_CTRL_EN ;
 int DSI1_PHYC_ESC_CLK_LPDT ;
 int DSI1_PHY_AFEC0_IDR_CLANE ;
 int DSI1_PHY_AFEC0_IDR_DLANE0 ;
 int DSI1_PHY_AFEC0_IDR_DLANE1 ;
 int DSI1_PHY_AFEC0_IDR_DLANE2 ;
 int DSI1_PHY_AFEC0_IDR_DLANE3 ;
 int DSI1_PHY_AFEC0_PD_DLANE1 ;
 int DSI1_PHY_AFEC0_PD_DLANE2 ;
 int DSI1_PHY_AFEC0_PD_DLANE3 ;
 int DSI1_PHY_AFEC0_RESET ;
 int DSI_CTRL_CAL_BYTE ;
 int DSI_CTRL_HSDT_EOT_DISABLE ;
 int DSI_CTRL_RX_LPDT_EOT_DISABLE ;
 int DSI_CTRL_SOFT_RESET_CFG ;
 int DSI_DISP0_COMMAND_MODE ;
 int DSI_DISP0_ENABLE ;
 int DSI_DISP0_LP_STOP_CTRL ;
 int DSI_DISP0_LP_STOP_PERFRAME ;
 int DSI_DISP0_PFORMAT ;
 int DSI_DISP0_PIX_CLK_DIV ;
 int DSI_DISP0_ST_END ;
 int DSI_DISP1_ENABLE ;
 int DSI_DISP1_PFORMAT ;
 int DSI_DISP1_PFORMAT_32BIT_LE ;
 int DSI_HS_CLT0_CPRE ;
 int DSI_HS_CLT0_CPREP ;
 int DSI_HS_CLT0_CZERO ;
 int DSI_HS_CLT1_CPOST ;
 int DSI_HS_CLT1_CTRAIL ;
 int DSI_HS_CLT2_WUP ;
 int DSI_HS_DLT3_EXIT ;
 int DSI_HS_DLT3_PRE ;
 int DSI_HS_DLT3_ZERO ;
 int DSI_HS_DLT4_ANLAT ;
 int DSI_HS_DLT4_LPX ;
 int DSI_HS_DLT4_TRAIL ;
 int DSI_HS_DLT5_INIT ;
 int DSI_HS_DLT6_LP_LPX ;
 int DSI_HS_DLT6_TA_GET ;
 int DSI_HS_DLT6_TA_GO ;
 int DSI_HS_DLT6_TA_SURE ;
 int DSI_HS_DLT7_LP_WUP ;
 int DSI_PHYC_DLANE0_ENABLE ;
 int DSI_PHYC_DLANE1_ENABLE ;
 int DSI_PHYC_DLANE2_ENABLE ;
 int DSI_PHYC_DLANE3_ENABLE ;
 int DSI_PHY_AFEC0_CTATADJ ;
 int DSI_PHY_AFEC0_PTATADJ ;
 int DSI_PORT_BIT (int ) ;
 int DSI_PORT_READ (int ) ;
 int DSI_PORT_WRITE (int ,int) ;
 int ESC_TIME_NS ;
 int HSTX_TO_CNT ;
 int HS_CLT0 ;
 int HS_CLT1 ;
 int HS_CLT2 ;
 int HS_DLT3 ;
 int HS_DLT4 ;
 int HS_DLT5 ;
 int HS_DLT6 ;
 int HS_DLT7 ;
 int LPRX_TO_CNT ;
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ;
 int MIPI_DSI_MODE_VIDEO ;
 int PHYC ;
 int PHYC_CLANE_ENABLE ;
 int PHYC_HS_CLK_CONTINUOUS ;
 int PHY_AFEC0 ;
 int PHY_AFEC1 ;
 int PR_TO_CNT ;
 int STAT ;
 int TA_TO_CNT ;
 int VC4_SET_FIELD (int,int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_err (struct device*,char*,unsigned long,int) ;
 int dev_info (struct device*,char*) ;
 int drm_bridge_enable (int ) ;
 int drm_bridge_pre_enable (int ) ;
 struct drm_printer drm_info_printer (struct device*) ;
 int drm_print_regset32 (struct drm_printer*,int *) ;
 int dsi_esc_timing (int) ;
 int dsi_hs_timing (int,int,int) ;
 int max (int,int) ;
 int mdelay (int) ;
 int pm_runtime_get_sync (struct device*) ;
 struct vc4_dsi_encoder* to_vc4_dsi_encoder (struct drm_encoder*) ;
 int vc4_dsi_ulps (struct vc4_dsi*,int) ;

__attribute__((used)) static void vc4_dsi_encoder_enable(struct drm_encoder *encoder)
{
 struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
 struct vc4_dsi_encoder *vc4_encoder = to_vc4_dsi_encoder(encoder);
 struct vc4_dsi *dsi = vc4_encoder->dsi;
 struct device *dev = &dsi->pdev->dev;
 bool debug_dump_regs = 0;
 unsigned long hs_clock;
 u32 ui_ns;

 u32 lpx = dsi_esc_timing(60);
 unsigned long pixel_clock_hz = mode->clock * 1000;
 unsigned long dsip_clock;
 unsigned long phy_clock;
 int ret;

 ret = pm_runtime_get_sync(dev);
 if (ret) {
  DRM_ERROR("Failed to runtime PM enable on DSI%d\n", dsi->port);
  return;
 }

 if (debug_dump_regs) {
  struct drm_printer p = drm_info_printer(&dsi->pdev->dev);
  dev_info(&dsi->pdev->dev, "DSI regs before:\n");
  drm_print_regset32(&p, &dsi->regset);
 }





 phy_clock = (pixel_clock_hz + 1000) * dsi->divider;
 ret = clk_set_rate(dsi->pll_phy_clock, phy_clock);
 if (ret) {
  dev_err(&dsi->pdev->dev,
   "Failed to set phy clock to %ld: %d\n", phy_clock, ret);
 }


 DSI_PORT_WRITE(CTRL,
         DSI_CTRL_SOFT_RESET_CFG |
         DSI_PORT_BIT(CTRL_RESET_FIFOS));

 DSI_PORT_WRITE(CTRL,
         DSI_CTRL_HSDT_EOT_DISABLE |
         DSI_CTRL_RX_LPDT_EOT_DISABLE);


 DSI_PORT_WRITE(STAT, DSI_PORT_READ(STAT));


 if (dsi->port == 0) {
  u32 afec0 = (VC4_SET_FIELD(7, DSI_PHY_AFEC0_PTATADJ) |
        VC4_SET_FIELD(7, DSI_PHY_AFEC0_CTATADJ));

  if (dsi->lanes < 2)
   afec0 |= DSI0_PHY_AFEC0_PD_DLANE1;

  if (!(dsi->mode_flags & MIPI_DSI_MODE_VIDEO))
   afec0 |= DSI0_PHY_AFEC0_RESET;

  DSI_PORT_WRITE(PHY_AFEC0, afec0);

  DSI_PORT_WRITE(PHY_AFEC1,
          VC4_SET_FIELD(6, DSI0_PHY_AFEC1_IDR_DLANE1) |
          VC4_SET_FIELD(6, DSI0_PHY_AFEC1_IDR_DLANE0) |
          VC4_SET_FIELD(6, DSI0_PHY_AFEC1_IDR_CLANE));
 } else {
  u32 afec0 = (VC4_SET_FIELD(7, DSI_PHY_AFEC0_PTATADJ) |
        VC4_SET_FIELD(7, DSI_PHY_AFEC0_CTATADJ) |
        VC4_SET_FIELD(6, DSI1_PHY_AFEC0_IDR_CLANE) |
        VC4_SET_FIELD(6, DSI1_PHY_AFEC0_IDR_DLANE0) |
        VC4_SET_FIELD(6, DSI1_PHY_AFEC0_IDR_DLANE1) |
        VC4_SET_FIELD(6, DSI1_PHY_AFEC0_IDR_DLANE2) |
        VC4_SET_FIELD(6, DSI1_PHY_AFEC0_IDR_DLANE3));

  if (dsi->lanes < 4)
   afec0 |= DSI1_PHY_AFEC0_PD_DLANE3;
  if (dsi->lanes < 3)
   afec0 |= DSI1_PHY_AFEC0_PD_DLANE2;
  if (dsi->lanes < 2)
   afec0 |= DSI1_PHY_AFEC0_PD_DLANE1;

  afec0 |= DSI1_PHY_AFEC0_RESET;

  DSI_PORT_WRITE(PHY_AFEC0, afec0);

  DSI_PORT_WRITE(PHY_AFEC1, 0);


  mdelay(1);
 }

 ret = clk_prepare_enable(dsi->escape_clock);
 if (ret) {
  DRM_ERROR("Failed to turn on DSI escape clock: %d\n", ret);
  return;
 }

 ret = clk_prepare_enable(dsi->pll_phy_clock);
 if (ret) {
  DRM_ERROR("Failed to turn on DSI PLL: %d\n", ret);
  return;
 }

 hs_clock = clk_get_rate(dsi->pll_phy_clock);
 dsip_clock = phy_clock / 8;
 ret = clk_set_rate(dsi->pixel_clock, dsip_clock);
 if (ret) {
  dev_err(dev, "Failed to set pixel clock to %ldHz: %d\n",
   dsip_clock, ret);
 }

 ret = clk_prepare_enable(dsi->pixel_clock);
 if (ret) {
  DRM_ERROR("Failed to turn on DSI pixel clock: %d\n", ret);
  return;
 }




 ui_ns = DIV_ROUND_UP(500000000, hs_clock);

 DSI_PORT_WRITE(HS_CLT0,
         VC4_SET_FIELD(dsi_hs_timing(ui_ns, 262, 0),
         DSI_HS_CLT0_CZERO) |
         VC4_SET_FIELD(dsi_hs_timing(ui_ns, 0, 8),
         DSI_HS_CLT0_CPRE) |
         VC4_SET_FIELD(dsi_hs_timing(ui_ns, 38, 0),
         DSI_HS_CLT0_CPREP));

 DSI_PORT_WRITE(HS_CLT1,
         VC4_SET_FIELD(dsi_hs_timing(ui_ns, 60, 0),
         DSI_HS_CLT1_CTRAIL) |
         VC4_SET_FIELD(dsi_hs_timing(ui_ns, 60, 52),
         DSI_HS_CLT1_CPOST));

 DSI_PORT_WRITE(HS_CLT2,
         VC4_SET_FIELD(dsi_hs_timing(ui_ns, 1000000, 0),
         DSI_HS_CLT2_WUP));

 DSI_PORT_WRITE(HS_DLT3,
         VC4_SET_FIELD(dsi_hs_timing(ui_ns, 100, 0),
         DSI_HS_DLT3_EXIT) |
         VC4_SET_FIELD(dsi_hs_timing(ui_ns, 105, 6),
         DSI_HS_DLT3_ZERO) |
         VC4_SET_FIELD(dsi_hs_timing(ui_ns, 40, 4),
         DSI_HS_DLT3_PRE));

 DSI_PORT_WRITE(HS_DLT4,
         VC4_SET_FIELD(dsi_hs_timing(ui_ns, lpx * ESC_TIME_NS, 0),
         DSI_HS_DLT4_LPX) |
         VC4_SET_FIELD(max(dsi_hs_timing(ui_ns, 0, 8),
      dsi_hs_timing(ui_ns, 60, 4)),
         DSI_HS_DLT4_TRAIL) |
         VC4_SET_FIELD(0, DSI_HS_DLT4_ANLAT));
 DSI_PORT_WRITE(HS_DLT5, VC4_SET_FIELD(dsi_hs_timing(ui_ns,
           5 * 1000 * 1000, 0),
           DSI_HS_DLT5_INIT));

 DSI_PORT_WRITE(HS_DLT6,
         VC4_SET_FIELD(lpx * 5, DSI_HS_DLT6_TA_GET) |
         VC4_SET_FIELD(lpx, DSI_HS_DLT6_TA_SURE) |
         VC4_SET_FIELD(lpx * 4, DSI_HS_DLT6_TA_GO) |
         VC4_SET_FIELD(lpx, DSI_HS_DLT6_LP_LPX));

 DSI_PORT_WRITE(HS_DLT7,
         VC4_SET_FIELD(dsi_esc_timing(1000000),
         DSI_HS_DLT7_LP_WUP));

 DSI_PORT_WRITE(PHYC,
         DSI_PHYC_DLANE0_ENABLE |
         (dsi->lanes >= 2 ? DSI_PHYC_DLANE1_ENABLE : 0) |
         (dsi->lanes >= 3 ? DSI_PHYC_DLANE2_ENABLE : 0) |
         (dsi->lanes >= 4 ? DSI_PHYC_DLANE3_ENABLE : 0) |
         DSI_PORT_BIT(PHYC_CLANE_ENABLE) |
         ((dsi->mode_flags & MIPI_DSI_CLOCK_NON_CONTINUOUS) ?
   0 : DSI_PORT_BIT(PHYC_HS_CLK_CONTINUOUS)) |
         (dsi->port == 0 ?
   VC4_SET_FIELD(lpx - 1, DSI0_PHYC_ESC_CLK_LPDT) :
   VC4_SET_FIELD(lpx - 1, DSI1_PHYC_ESC_CLK_LPDT)));

 DSI_PORT_WRITE(CTRL,
         DSI_PORT_READ(CTRL) |
         DSI_CTRL_CAL_BYTE);


 DSI_PORT_WRITE(HSTX_TO_CNT, 0);

 DSI_PORT_WRITE(LPRX_TO_CNT, 0xffffff);

 DSI_PORT_WRITE(TA_TO_CNT, 100000);

 DSI_PORT_WRITE(PR_TO_CNT, 100000);




 DSI_PORT_WRITE(DISP1_CTRL,
         VC4_SET_FIELD(DSI_DISP1_PFORMAT_32BIT_LE,
         DSI_DISP1_PFORMAT) |
         DSI_DISP1_ENABLE);


 if (dsi->port == 0)
  DSI_PORT_WRITE(CTRL, DSI_PORT_READ(CTRL) | DSI0_CTRL_CTRL0);
 else
  DSI_PORT_WRITE(CTRL, DSI_PORT_READ(CTRL) | DSI1_CTRL_EN);


 if (dsi->port == 0) {
 } else {
  DSI_PORT_WRITE(PHY_AFEC0,
          DSI_PORT_READ(PHY_AFEC0) &
          ~DSI1_PHY_AFEC0_RESET);
 }

 vc4_dsi_ulps(dsi, 0);

 drm_bridge_pre_enable(dsi->bridge);

 if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO) {
  DSI_PORT_WRITE(DISP0_CTRL,
          VC4_SET_FIELD(dsi->divider,
          DSI_DISP0_PIX_CLK_DIV) |
          VC4_SET_FIELD(dsi->format, DSI_DISP0_PFORMAT) |
          VC4_SET_FIELD(DSI_DISP0_LP_STOP_PERFRAME,
          DSI_DISP0_LP_STOP_CTRL) |
          DSI_DISP0_ST_END |
          DSI_DISP0_ENABLE);
 } else {
  DSI_PORT_WRITE(DISP0_CTRL,
          DSI_DISP0_COMMAND_MODE |
          DSI_DISP0_ENABLE);
 }

 drm_bridge_enable(dsi->bridge);

 if (debug_dump_regs) {
  struct drm_printer p = drm_info_printer(&dsi->pdev->dev);
  dev_info(&dsi->pdev->dev, "DSI regs after:\n");
  drm_print_regset32(&p, &dsi->regset);
 }
}
