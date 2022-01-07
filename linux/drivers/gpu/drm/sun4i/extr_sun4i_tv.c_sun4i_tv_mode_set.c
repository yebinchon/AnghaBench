
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tv_mode {int mode; int chroma_freq; TYPE_4__* resync_params; int vblank_level; TYPE_3__* color_gains; TYPE_2__* burst_levels; TYPE_1__* video_levels; int line_number; int front_porch; int back_porch; scalar_t__ dac_bit25_en; scalar_t__ dac3_en; scalar_t__ yc_en; } ;
struct sun4i_tv {int regs; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_8__ {scalar_t__ field; int line; int pixel; } ;
struct TYPE_7__ {int cr; int cb; } ;
struct TYPE_6__ {int cr; int cb; } ;
struct TYPE_5__ {int black; int blank; } ;


 int BIT (int) ;
 int SUN4I_TVE_12C_COMP_YUV_EN ;
 int SUN4I_TVE_12C_NOTCH_WIDTH_WIDE ;
 int SUN4I_TVE_12C_REG ;
 int SUN4I_TVE_ACTIVE_LINE (int) ;
 int SUN4I_TVE_ACTIVE_LINE_REG ;
 int SUN4I_TVE_BURST_WIDTH_BREEZEWAY (int) ;
 int SUN4I_TVE_BURST_WIDTH_BURST_WIDTH (int) ;
 int SUN4I_TVE_BURST_WIDTH_HSYNC_WIDTH (int) ;
 int SUN4I_TVE_BURST_WIDTH_REG ;
 int SUN4I_TVE_CB_CR_GAIN_CB (int ) ;
 int SUN4I_TVE_CB_CR_GAIN_CR (int ) ;
 int SUN4I_TVE_CB_CR_GAIN_REG ;
 int SUN4I_TVE_CB_CR_LVL_CB_BURST (int ) ;
 int SUN4I_TVE_CB_CR_LVL_CR_BURST (int ) ;
 int SUN4I_TVE_CB_CR_LVL_REG ;
 int SUN4I_TVE_CFG0_COMP_EN ;
 int SUN4I_TVE_CFG0_CORE_CONTROL_54M ;
 int SUN4I_TVE_CFG0_CORE_DATAPATH_54M ;
 int SUN4I_TVE_CFG0_DAC_CONTROL_54M ;
 int SUN4I_TVE_CFG0_REG ;
 int SUN4I_TVE_CFG0_YC_EN ;
 int SUN4I_TVE_CHROMA_COMP_GAIN_50 ;
 int SUN4I_TVE_CHROMA_FREQ_REG ;
 int SUN4I_TVE_CHROMA_REG ;
 int SUN4I_TVE_DAC0_CHROMA_0_75 ;
 int SUN4I_TVE_DAC0_CLOCK_INVERT ;
 int SUN4I_TVE_DAC0_DAC_EN (int) ;
 int SUN4I_TVE_DAC0_INTERNAL_DAC_37_5_OHMS ;
 int SUN4I_TVE_DAC0_LUMA_0_4 ;
 int SUN4I_TVE_DAC0_REG ;
 int SUN4I_TVE_DAC1_AMPLITUDE (int,int) ;
 int SUN4I_TVE_DAC1_REG ;
 int SUN4I_TVE_EN_DAC_MAP (int,int) ;
 int SUN4I_TVE_EN_DAC_MAP_MASK ;
 int SUN4I_TVE_EN_REG ;
 int SUN4I_TVE_LEVEL_BLACK (int ) ;
 int SUN4I_TVE_LEVEL_BLANK (int ) ;
 int SUN4I_TVE_LEVEL_REG ;
 int SUN4I_TVE_LINE_FIRST (int) ;
 int SUN4I_TVE_LINE_NUMBER (int ) ;
 int SUN4I_TVE_LINE_REG ;
 int SUN4I_TVE_NOTCH_DAC0_TO_DAC_DLY (int,int ) ;
 int SUN4I_TVE_NOTCH_REG ;
 int SUN4I_TVE_PORCH_BACK (int ) ;
 int SUN4I_TVE_PORCH_FRONT (int ) ;
 int SUN4I_TVE_PORCH_REG ;
 int SUN4I_TVE_RESYNC_FIELD ;
 int SUN4I_TVE_RESYNC_LINE (int ) ;
 int SUN4I_TVE_RESYNC_PIXEL (int ) ;
 int SUN4I_TVE_RESYNC_REG ;
 int SUN4I_TVE_SLAVE_REG ;
 int SUN4I_TVE_SYNC_VBI_REG ;
 int SUN4I_TVE_SYNC_VBI_SYNC (int) ;
 int SUN4I_TVE_SYNC_VBI_VBLANK (int ) ;
 struct sun4i_tv* drm_encoder_to_sun4i_tv (struct drm_encoder*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;
 struct tv_mode* sun4i_tv_find_tv_by_mode (struct drm_display_mode*) ;

__attribute__((used)) static void sun4i_tv_mode_set(struct drm_encoder *encoder,
         struct drm_display_mode *mode,
         struct drm_display_mode *adjusted_mode)
{
 struct sun4i_tv *tv = drm_encoder_to_sun4i_tv(encoder);
 const struct tv_mode *tv_mode = sun4i_tv_find_tv_by_mode(mode);


 regmap_update_bits(tv->regs, SUN4I_TVE_EN_REG,
      SUN4I_TVE_EN_DAC_MAP_MASK,
      SUN4I_TVE_EN_DAC_MAP(0, 1) |
      SUN4I_TVE_EN_DAC_MAP(1, 2) |
      SUN4I_TVE_EN_DAC_MAP(2, 3) |
      SUN4I_TVE_EN_DAC_MAP(3, 4));


 regmap_write(tv->regs, SUN4I_TVE_CFG0_REG,
       tv_mode->mode |
       (tv_mode->yc_en ? SUN4I_TVE_CFG0_YC_EN : 0) |
       SUN4I_TVE_CFG0_COMP_EN |
       SUN4I_TVE_CFG0_DAC_CONTROL_54M |
       SUN4I_TVE_CFG0_CORE_DATAPATH_54M |
       SUN4I_TVE_CFG0_CORE_CONTROL_54M);


 regmap_write(tv->regs, SUN4I_TVE_DAC0_REG,
       SUN4I_TVE_DAC0_DAC_EN(0) |
       (tv_mode->dac3_en ? SUN4I_TVE_DAC0_DAC_EN(3) : 0) |
       SUN4I_TVE_DAC0_INTERNAL_DAC_37_5_OHMS |
       SUN4I_TVE_DAC0_CHROMA_0_75 |
       SUN4I_TVE_DAC0_LUMA_0_4 |
       SUN4I_TVE_DAC0_CLOCK_INVERT |
       (tv_mode->dac_bit25_en ? BIT(25) : 0) |
       BIT(30));


 regmap_write(tv->regs, SUN4I_TVE_NOTCH_REG,
       SUN4I_TVE_NOTCH_DAC0_TO_DAC_DLY(1, 0) |
       SUN4I_TVE_NOTCH_DAC0_TO_DAC_DLY(2, 0));

 regmap_write(tv->regs, SUN4I_TVE_CHROMA_FREQ_REG,
       tv_mode->chroma_freq);


 regmap_write(tv->regs, SUN4I_TVE_PORCH_REG,
       SUN4I_TVE_PORCH_BACK(tv_mode->back_porch) |
       SUN4I_TVE_PORCH_FRONT(tv_mode->front_porch));


 regmap_write(tv->regs, SUN4I_TVE_LINE_REG,
       SUN4I_TVE_LINE_FIRST(22) |
       SUN4I_TVE_LINE_NUMBER(tv_mode->line_number));

 regmap_write(tv->regs, SUN4I_TVE_LEVEL_REG,
       SUN4I_TVE_LEVEL_BLANK(tv_mode->video_levels->blank) |
       SUN4I_TVE_LEVEL_BLACK(tv_mode->video_levels->black));

 regmap_write(tv->regs, SUN4I_TVE_DAC1_REG,
       SUN4I_TVE_DAC1_AMPLITUDE(0, 0x18) |
       SUN4I_TVE_DAC1_AMPLITUDE(1, 0x18) |
       SUN4I_TVE_DAC1_AMPLITUDE(2, 0x18) |
       SUN4I_TVE_DAC1_AMPLITUDE(3, 0x18));

 regmap_write(tv->regs, SUN4I_TVE_CB_CR_LVL_REG,
       SUN4I_TVE_CB_CR_LVL_CB_BURST(tv_mode->burst_levels->cb) |
       SUN4I_TVE_CB_CR_LVL_CR_BURST(tv_mode->burst_levels->cr));


 regmap_write(tv->regs, SUN4I_TVE_BURST_WIDTH_REG,
       SUN4I_TVE_BURST_WIDTH_HSYNC_WIDTH(126) |
       SUN4I_TVE_BURST_WIDTH_BURST_WIDTH(68) |
       SUN4I_TVE_BURST_WIDTH_BREEZEWAY(22));

 regmap_write(tv->regs, SUN4I_TVE_CB_CR_GAIN_REG,
       SUN4I_TVE_CB_CR_GAIN_CB(tv_mode->color_gains->cb) |
       SUN4I_TVE_CB_CR_GAIN_CR(tv_mode->color_gains->cr));

 regmap_write(tv->regs, SUN4I_TVE_SYNC_VBI_REG,
       SUN4I_TVE_SYNC_VBI_SYNC(0x10) |
       SUN4I_TVE_SYNC_VBI_VBLANK(tv_mode->vblank_level));

 regmap_write(tv->regs, SUN4I_TVE_ACTIVE_LINE_REG,
       SUN4I_TVE_ACTIVE_LINE(1440));


 regmap_write(tv->regs, SUN4I_TVE_CHROMA_REG,
       SUN4I_TVE_CHROMA_COMP_GAIN_50);

 regmap_write(tv->regs, SUN4I_TVE_12C_REG,
       SUN4I_TVE_12C_COMP_YUV_EN |
       SUN4I_TVE_12C_NOTCH_WIDTH_WIDE);

 regmap_write(tv->regs, SUN4I_TVE_RESYNC_REG,
       SUN4I_TVE_RESYNC_PIXEL(tv_mode->resync_params->pixel) |
       SUN4I_TVE_RESYNC_LINE(tv_mode->resync_params->line) |
       (tv_mode->resync_params->field ?
        SUN4I_TVE_RESYNC_FIELD : 0));

 regmap_write(tv->regs, SUN4I_TVE_SLAVE_REG, 0);
}
