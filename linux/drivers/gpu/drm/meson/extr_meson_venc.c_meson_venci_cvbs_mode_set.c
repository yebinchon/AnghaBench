
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ current_mode; } ;
struct meson_drm {TYPE_1__ venc; scalar_t__ io_base; } ;
struct meson_cvbs_enci_mode {scalar_t__ mode_tag; int hso_begin; int hso_end; int vso_even; int vso_odd; int video_prog_mode; int video_mode; int yc_delay; int pixel_start; int pixel_end; int top_field_line_start; int top_field_line_end; int bottom_field_line_start; int bottom_field_line_end; int video_saturation; int video_contrast; int video_brightness; int video_hue; int analog_sync_adj; int sch_adjust; int macv_max_amp; } ;


 int ENCI_CFILT_CMPT_CB_DLY (int) ;
 int ENCI_CFILT_CMPT_CR_DLY (int) ;
 int ENCI_CFILT_CMPT_SEL_HIGH ;
 int ENCI_CFILT_CTRL ;
 int ENCI_CFILT_CTRL2 ;
 int ENCI_DACSEL_0 ;
 int ENCI_DACSEL_1 ;
 int ENCI_DBG_PX_RST ;
 int ENCI_MACV_MAX_AMP ;
 int ENCI_MACV_MAX_AMP_ENABLE_CHANGE ;
 int ENCI_MACV_MAX_AMP_VAL (int ) ;
 int ENCI_MACV_N0 ;
 int ENCI_SYNC_ADJ ;
 int ENCI_SYNC_HSO_BEGIN ;
 int ENCI_SYNC_HSO_END ;
 int ENCI_SYNC_MODE ;
 int ENCI_SYNC_VSO_EVNLN ;
 int ENCI_SYNC_VSO_ODDLN ;
 int ENCI_VFIFO2VD_CTL ;
 int ENCI_VFIFO2VD_CTL_ENABLE ;
 int ENCI_VFIFO2VD_CTL_VD_SEL (int) ;
 int ENCI_VFIFO2VD_LINE_BOT_END ;
 int ENCI_VFIFO2VD_LINE_BOT_START ;
 int ENCI_VFIFO2VD_LINE_TOP_END ;
 int ENCI_VFIFO2VD_LINE_TOP_START ;
 int ENCI_VFIFO2VD_PIXEL_END ;
 int ENCI_VFIFO2VD_PIXEL_START ;
 int ENCI_VIDEO_BRIGHT ;
 int ENCI_VIDEO_CONT ;
 int ENCI_VIDEO_EN ;
 int ENCI_VIDEO_EN_ENABLE ;
 int ENCI_VIDEO_HUE ;
 int ENCI_VIDEO_MODE ;
 int ENCI_VIDEO_MODE_ADV ;
 int ENCI_VIDEO_MODE_ADV_DMXMD (int) ;
 int ENCI_VIDEO_MODE_ADV_VBICTL_LINE_17_22 ;
 int ENCI_VIDEO_MODE_ADV_YBW_HIGH ;
 int ENCI_VIDEO_SAT ;
 int ENCI_VIDEO_SCH ;
 int ENCI_YC_DELAY ;
 int MESON_VIU_VPP_MUX_ENCI ;
 int VENC_DVI_SETTING ;
 int VENC_SYNC_ROUTE ;
 int VENC_UPSAMPLE_CTRL0 ;
 int VENC_UPSAMPLE_CTRL1 ;
 int VENC_UPSAMPLE_CTRL2 ;
 int VENC_UPSAMPLE_CTRL_F0_2_CLK_RATIO ;
 int VENC_UPSAMPLE_CTRL_F1_EN ;
 int VENC_UPSAMPLE_CTRL_F1_UPSAMPLE_EN ;
 int VENC_UPSAMPLE_CTRL_INTERLACE_HIGH_LUMA ;
 int VENC_UPSAMPLE_CTRL_INTERLACE_PB ;
 int VENC_UPSAMPLE_CTRL_INTERLACE_PR ;
 int VENC_VDAC_DAC0_FILT_CTRL0 ;
 int VENC_VDAC_DAC0_FILT_CTRL0_EN ;
 int VENC_VDAC_DAC0_FILT_CTRL1 ;
 int VENC_VDAC_DACSEL0 ;
 int VENC_VDAC_DACSEL1 ;
 int VENC_VDAC_DACSEL2 ;
 int VENC_VDAC_DACSEL3 ;
 int VENC_VDAC_DACSEL4 ;
 int VENC_VDAC_DACSEL5 ;
 int VENC_VDAC_FIFO_CTRL ;
 int VENC_VDAC_FIFO_EN_ENCI_ENABLE ;
 int VENC_VDAC_SETTING ;
 int VENC_VIDEO_PROG_MODE ;
 scalar_t__ _REG (int ) ;
 int meson_vpp_setup_mux (struct meson_drm*,int ) ;
 int writel (int ,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

void meson_venci_cvbs_mode_set(struct meson_drm *priv,
          struct meson_cvbs_enci_mode *mode)
{
 u32 reg;

 if (mode->mode_tag == priv->venc.current_mode)
  return;


 writel_relaxed(ENCI_CFILT_CMPT_SEL_HIGH | 0x10,
         priv->io_base + _REG(ENCI_CFILT_CTRL));
 writel_relaxed(ENCI_CFILT_CMPT_CR_DLY(2) |
         ENCI_CFILT_CMPT_CB_DLY(1),
         priv->io_base + _REG(ENCI_CFILT_CTRL2));


 writel_relaxed(0, priv->io_base + _REG(VENC_DVI_SETTING));


 writel_relaxed(0, priv->io_base + _REG(ENCI_VIDEO_MODE));
 writel_relaxed(0, priv->io_base + _REG(ENCI_VIDEO_MODE_ADV));


 writel_relaxed(mode->hso_begin,
   priv->io_base + _REG(ENCI_SYNC_HSO_BEGIN));
 writel_relaxed(mode->hso_end,
   priv->io_base + _REG(ENCI_SYNC_HSO_END));


 writel_relaxed(mode->vso_even,
   priv->io_base + _REG(ENCI_SYNC_VSO_EVNLN));
 writel_relaxed(mode->vso_odd,
   priv->io_base + _REG(ENCI_SYNC_VSO_ODDLN));


 writel_relaxed(ENCI_MACV_MAX_AMP_ENABLE_CHANGE |
         ENCI_MACV_MAX_AMP_VAL(mode->macv_max_amp),
         priv->io_base + _REG(ENCI_MACV_MAX_AMP));


 writel_relaxed(mode->video_prog_mode,
   priv->io_base + _REG(VENC_VIDEO_PROG_MODE));
 writel_relaxed(mode->video_mode,
   priv->io_base + _REG(ENCI_VIDEO_MODE));
 writel_relaxed(ENCI_VIDEO_MODE_ADV_DMXMD(2) |
         ENCI_VIDEO_MODE_ADV_VBICTL_LINE_17_22 |
         ENCI_VIDEO_MODE_ADV_YBW_HIGH,
         priv->io_base + _REG(ENCI_VIDEO_MODE_ADV));

 writel(mode->sch_adjust, priv->io_base + _REG(ENCI_VIDEO_SCH));


 writel_relaxed(0x07, priv->io_base + _REG(ENCI_SYNC_MODE));


 writel_relaxed(mode->yc_delay, priv->io_base + _REG(ENCI_YC_DELAY));


 writel_relaxed(mode->pixel_start,
   priv->io_base + _REG(ENCI_VFIFO2VD_PIXEL_START));
 writel_relaxed(mode->pixel_end,
   priv->io_base + _REG(ENCI_VFIFO2VD_PIXEL_END));

 writel_relaxed(mode->top_field_line_start,
   priv->io_base + _REG(ENCI_VFIFO2VD_LINE_TOP_START));
 writel_relaxed(mode->top_field_line_end,
   priv->io_base + _REG(ENCI_VFIFO2VD_LINE_TOP_END));

 writel_relaxed(mode->bottom_field_line_start,
   priv->io_base + _REG(ENCI_VFIFO2VD_LINE_BOT_START));
 writel_relaxed(mode->bottom_field_line_end,
   priv->io_base + _REG(ENCI_VFIFO2VD_LINE_BOT_END));


 writel_relaxed(0, priv->io_base + _REG(VENC_SYNC_ROUTE));


 writel_relaxed(0, priv->io_base + _REG(ENCI_DBG_PX_RST));
 writel_relaxed(ENCI_VFIFO2VD_CTL_ENABLE |
         ENCI_VFIFO2VD_CTL_VD_SEL(0x4e),
         priv->io_base + _REG(ENCI_VFIFO2VD_CTL));


 writel_relaxed(0, priv->io_base + _REG(VENC_VDAC_SETTING));







 reg = VENC_UPSAMPLE_CTRL_F0_2_CLK_RATIO | VENC_UPSAMPLE_CTRL_F1_EN |
  VENC_UPSAMPLE_CTRL_F1_UPSAMPLE_EN;





 writel_relaxed(VENC_UPSAMPLE_CTRL_INTERLACE_HIGH_LUMA | reg,
         priv->io_base + _REG(VENC_UPSAMPLE_CTRL0));





 writel_relaxed(VENC_UPSAMPLE_CTRL_INTERLACE_PB | reg,
         priv->io_base + _REG(VENC_UPSAMPLE_CTRL1));





 writel_relaxed(VENC_UPSAMPLE_CTRL_INTERLACE_PR | reg,
         priv->io_base + _REG(VENC_UPSAMPLE_CTRL2));


 writel_relaxed(0, priv->io_base + _REG(VENC_VDAC_DACSEL0));
 writel_relaxed(0, priv->io_base + _REG(VENC_VDAC_DACSEL1));
 writel_relaxed(0, priv->io_base + _REG(VENC_VDAC_DACSEL2));
 writel_relaxed(0, priv->io_base + _REG(VENC_VDAC_DACSEL3));
 writel_relaxed(0, priv->io_base + _REG(VENC_VDAC_DACSEL4));
 writel_relaxed(0, priv->io_base + _REG(VENC_VDAC_DACSEL5));


 meson_vpp_setup_mux(priv, MESON_VIU_VPP_MUX_ENCI);


 writel_relaxed(VENC_VDAC_FIFO_EN_ENCI_ENABLE,
         priv->io_base + _REG(VENC_VDAC_FIFO_CTRL));


 writel_relaxed(0x11, priv->io_base + _REG(ENCI_DACSEL_0));
 writel_relaxed(0x11, priv->io_base + _REG(ENCI_DACSEL_1));


 writel_relaxed(ENCI_VIDEO_EN_ENABLE,
         priv->io_base + _REG(ENCI_VIDEO_EN));


 writel_relaxed(mode->video_saturation,
   priv->io_base + _REG(ENCI_VIDEO_SAT));
 writel_relaxed(mode->video_contrast,
   priv->io_base + _REG(ENCI_VIDEO_CONT));
 writel_relaxed(mode->video_brightness,
   priv->io_base + _REG(ENCI_VIDEO_BRIGHT));
 writel_relaxed(mode->video_hue,
   priv->io_base + _REG(ENCI_VIDEO_HUE));


 writel_relaxed(VENC_VDAC_DAC0_FILT_CTRL0_EN,
         priv->io_base + _REG(VENC_VDAC_DAC0_FILT_CTRL0));
 writel_relaxed(0xfc48, priv->io_base + _REG(VENC_VDAC_DAC0_FILT_CTRL1));


 writel_relaxed(0, priv->io_base + _REG(ENCI_MACV_N0));


 writel_relaxed(mode->analog_sync_adj,
   priv->io_base + _REG(ENCI_SYNC_ADJ));

 priv->venc.current_mode = mode->mode_tag;
}
