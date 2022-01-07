
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int osd1_commit; int osd1_ctrl_stat; int* osd1_blk0_cfg; int osd_sc_ctrl0; int osd_sc_i_wh_m1; int osd_sc_o_h_start_end; int osd_sc_o_v_start_end; int osd_sc_v_ini_phase; int osd_sc_v_phase_step; int osd_sc_h_ini_phase; int osd_sc_h_phase_step; int osd_sc_h_ctrl0; int osd_sc_v_ctrl0; int vd1_commit; int vd1_planes; int vd1_if0_gen_reg; int vd1_if0_gen_reg2; int viu_vd1_fmt_ctrl; int viu_vd1_fmt_w; int vd1_if0_canvas0; int vd1_if0_luma_x0; int vd1_if0_luma_y0; int vd1_if0_chroma_x0; int vd1_if0_chroma_y0; int vd1_if0_repeat_loop; int vd1_if0_luma0_rpt_pat; int vd1_if0_chroma0_rpt_pat; int vd1_range_map_y; int vd1_range_map_cb; int vd1_range_map_cr; int vpp_pic_in_height; int vpp_postblend_vd1_h_start_end; int vpp_blend_vd2_h_start_end; int vpp_postblend_vd1_v_start_end; int vpp_blend_vd2_v_start_end; int vpp_hsc_region12_startp; int vpp_hsc_region34_startp; int vpp_hsc_region4_endp; int vpp_hsc_start_phase_step; int vpp_hsc_region1_phase_slope; int vpp_hsc_region3_phase_slope; int vpp_line_in_length; int vpp_preblend_h_size; int vpp_vsc_region12_startp; int vpp_vsc_region34_startp; int vpp_vsc_region4_endp; int vpp_vsc_start_phase_step; int vpp_vsc_ini_phase; int vpp_vsc_phase_ctrl; int vpp_hsc_phase_ctrl; int vd1_height0; int vd1_stride0; int vd1_addr0; int vd1_height1; int vd1_stride1; int vd1_addr1; int vd1_height2; int vd1_stride2; int vd1_addr2; scalar_t__ vd1_enabled; int osd1_height; int osd1_stride; int osd1_addr; scalar_t__ osd1_enabled; } ;
struct meson_drm {TYPE_2__* drm; int crtc; TYPE_1__ viu; scalar_t__ io_base; int canvas_id_vd1_0; int canvas; int canvas_id_vd1_1; int canvas_id_vd1_2; int canvas_id_osd1; } ;
struct meson_crtc {int * event; int (* enable_vd1 ) (struct meson_drm*) ;scalar_t__ viu_offset; int (* enable_osd1 ) (struct meson_drm*) ;} ;
struct TYPE_4__ {int event_lock; } ;


 int MESON_CANVAS_BLKMODE_LINEAR ;
 int MESON_CANVAS_ENDIAN_SWAP64 ;
 int MESON_CANVAS_WRAP_NONE ;
 int VD1_IF0_CANVAS0 ;
 int VD1_IF0_CANVAS1 ;
 int VD1_IF0_CHROMA0_RPT_PAT ;
 int VD1_IF0_CHROMA1_RPT_PAT ;
 int VD1_IF0_CHROMA_PSEL ;
 int VD1_IF0_CHROMA_X0 ;
 int VD1_IF0_CHROMA_X1 ;
 int VD1_IF0_CHROMA_Y0 ;
 int VD1_IF0_CHROMA_Y1 ;
 int VD1_IF0_GEN_REG ;
 int VD1_IF0_GEN_REG2 ;
 int VD1_IF0_LUMA0_RPT_PAT ;
 int VD1_IF0_LUMA1_RPT_PAT ;
 int VD1_IF0_LUMA_PSEL ;
 int VD1_IF0_LUMA_X0 ;
 int VD1_IF0_LUMA_X1 ;
 int VD1_IF0_LUMA_Y0 ;
 int VD1_IF0_LUMA_Y1 ;
 int VD1_IF0_RANGE_MAP_CB ;
 int VD1_IF0_RANGE_MAP_CR ;
 int VD1_IF0_RANGE_MAP_Y ;
 int VD1_IF0_RPT_LOOP ;
 int VD2_IF0_CANVAS0 ;
 int VD2_IF0_CANVAS1 ;
 int VD2_IF0_CHROMA0_RPT_PAT ;
 int VD2_IF0_CHROMA1_RPT_PAT ;
 int VD2_IF0_CHROMA_PSEL ;
 int VD2_IF0_CHROMA_X0 ;
 int VD2_IF0_CHROMA_X1 ;
 int VD2_IF0_CHROMA_Y0 ;
 int VD2_IF0_CHROMA_Y1 ;
 int VD2_IF0_GEN_REG ;
 int VD2_IF0_LUMA0_RPT_PAT ;
 int VD2_IF0_LUMA1_RPT_PAT ;
 int VD2_IF0_LUMA_PSEL ;
 int VD2_IF0_LUMA_X0 ;
 int VD2_IF0_LUMA_X1 ;
 int VD2_IF0_LUMA_Y0 ;
 int VD2_IF0_LUMA_Y1 ;
 int VD2_IF0_RPT_LOOP ;
 int VIU_OSD1_BLK0_CFG_W0 ;
 int VIU_OSD1_BLK0_CFG_W1 ;
 int VIU_OSD1_BLK0_CFG_W2 ;
 int VIU_OSD1_BLK0_CFG_W3 ;
 int VIU_OSD1_BLK0_CFG_W4 ;
 int VIU_OSD1_CTRL_STAT ;
 int VIU_VD1_FMT_CTRL ;
 int VIU_VD1_FMT_W ;
 int VIU_VD2_FMT_CTRL ;
 int VIU_VD2_FMT_W ;
 int VPP_BLEND_VD2_H_START_END ;
 int VPP_BLEND_VD2_V_START_END ;
 int VPP_HSC_BANK_LENGTH (int) ;
 int VPP_HSC_PHASE_CTRL ;
 int VPP_HSC_REGION12_STARTP ;
 int VPP_HSC_REGION1_PHASE_SLOPE ;
 int VPP_HSC_REGION34_STARTP ;
 int VPP_HSC_REGION3_PHASE_SLOPE ;
 int VPP_HSC_REGION4_ENDP ;
 int VPP_HSC_START_PHASE_STEP ;
 int VPP_LINE_IN_LENGTH ;
 int VPP_OSD_HSC_CTRL0 ;
 int VPP_OSD_HSC_INI_PHASE ;
 int VPP_OSD_HSC_PHASE_STEP ;
 int VPP_OSD_SCI_WH_M1 ;
 int VPP_OSD_SCO_H_START_END ;
 int VPP_OSD_SCO_V_START_END ;
 int VPP_OSD_SC_CTRL0 ;
 int VPP_OSD_VSC_CTRL0 ;
 int VPP_OSD_VSC_INI_PHASE ;
 int VPP_OSD_VSC_PHASE_STEP ;
 int VPP_PIC_IN_HEIGHT ;
 int VPP_POSTBLEND_VD1_H_START_END ;
 int VPP_POSTBLEND_VD1_V_START_END ;
 int VPP_PREBLEND_H_SIZE ;
 int VPP_SCALE_COEF_IDX ;
 int VPP_SC_HSC_EN_ENABLE ;
 int VPP_SC_MISC ;
 int VPP_SC_TOP_EN_ENABLE ;
 int VPP_SC_VD_EN_ENABLE ;
 int VPP_SC_VSC_EN_ENABLE ;
 int VPP_VSC_BANK_LENGTH (int) ;
 int VPP_VSC_INI_PHASE ;
 int VPP_VSC_PHASE_CTRL ;
 int VPP_VSC_REGION12_STARTP ;
 int VPP_VSC_REGION34_STARTP ;
 int VPP_VSC_REGION4_ENDP ;
 int VPP_VSC_START_PHASE_STEP ;
 scalar_t__ _REG (int ) ;
 int drm_crtc_handle_vblank (int ) ;
 int drm_crtc_send_vblank_event (int ,int *) ;
 int drm_crtc_vblank_put (int ) ;
 int meson_canvas_config (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct meson_drm*) ;
 int stub2 (struct meson_drm*) ;
 struct meson_crtc* to_meson_crtc (int ) ;
 int writel_relaxed (int,scalar_t__) ;

void meson_crtc_irq(struct meson_drm *priv)
{
 struct meson_crtc *meson_crtc = to_meson_crtc(priv->crtc);
 unsigned long flags;


 if (priv->viu.osd1_enabled && priv->viu.osd1_commit) {
  writel_relaxed(priv->viu.osd1_ctrl_stat,
    priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
  writel_relaxed(priv->viu.osd1_blk0_cfg[0],
    priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W0));
  writel_relaxed(priv->viu.osd1_blk0_cfg[1],
    priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W1));
  writel_relaxed(priv->viu.osd1_blk0_cfg[2],
    priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W2));
  writel_relaxed(priv->viu.osd1_blk0_cfg[3],
    priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W3));
  writel_relaxed(priv->viu.osd1_blk0_cfg[4],
    priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W4));
  writel_relaxed(priv->viu.osd_sc_ctrl0,
    priv->io_base + _REG(VPP_OSD_SC_CTRL0));
  writel_relaxed(priv->viu.osd_sc_i_wh_m1,
    priv->io_base + _REG(VPP_OSD_SCI_WH_M1));
  writel_relaxed(priv->viu.osd_sc_o_h_start_end,
    priv->io_base + _REG(VPP_OSD_SCO_H_START_END));
  writel_relaxed(priv->viu.osd_sc_o_v_start_end,
    priv->io_base + _REG(VPP_OSD_SCO_V_START_END));
  writel_relaxed(priv->viu.osd_sc_v_ini_phase,
    priv->io_base + _REG(VPP_OSD_VSC_INI_PHASE));
  writel_relaxed(priv->viu.osd_sc_v_phase_step,
    priv->io_base + _REG(VPP_OSD_VSC_PHASE_STEP));
  writel_relaxed(priv->viu.osd_sc_h_ini_phase,
    priv->io_base + _REG(VPP_OSD_HSC_INI_PHASE));
  writel_relaxed(priv->viu.osd_sc_h_phase_step,
    priv->io_base + _REG(VPP_OSD_HSC_PHASE_STEP));
  writel_relaxed(priv->viu.osd_sc_h_ctrl0,
    priv->io_base + _REG(VPP_OSD_HSC_CTRL0));
  writel_relaxed(priv->viu.osd_sc_v_ctrl0,
    priv->io_base + _REG(VPP_OSD_VSC_CTRL0));

  meson_canvas_config(priv->canvas, priv->canvas_id_osd1,
    priv->viu.osd1_addr, priv->viu.osd1_stride,
    priv->viu.osd1_height, MESON_CANVAS_WRAP_NONE,
    MESON_CANVAS_BLKMODE_LINEAR, 0);


  if (meson_crtc->enable_osd1)
   meson_crtc->enable_osd1(priv);

  priv->viu.osd1_commit = 0;
 }


 if (priv->viu.vd1_enabled && priv->viu.vd1_commit) {

  switch (priv->viu.vd1_planes) {
  case 3:
   meson_canvas_config(priv->canvas,
         priv->canvas_id_vd1_2,
         priv->viu.vd1_addr2,
         priv->viu.vd1_stride2,
         priv->viu.vd1_height2,
         MESON_CANVAS_WRAP_NONE,
         MESON_CANVAS_BLKMODE_LINEAR,
         MESON_CANVAS_ENDIAN_SWAP64);

  case 2:
   meson_canvas_config(priv->canvas,
         priv->canvas_id_vd1_1,
         priv->viu.vd1_addr1,
         priv->viu.vd1_stride1,
         priv->viu.vd1_height1,
         MESON_CANVAS_WRAP_NONE,
         MESON_CANVAS_BLKMODE_LINEAR,
         MESON_CANVAS_ENDIAN_SWAP64);

  case 1:
   meson_canvas_config(priv->canvas,
         priv->canvas_id_vd1_0,
         priv->viu.vd1_addr0,
         priv->viu.vd1_stride0,
         priv->viu.vd1_height0,
         MESON_CANVAS_WRAP_NONE,
         MESON_CANVAS_BLKMODE_LINEAR,
         MESON_CANVAS_ENDIAN_SWAP64);
  };

  writel_relaxed(priv->viu.vd1_if0_gen_reg,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_GEN_REG));
  writel_relaxed(priv->viu.vd1_if0_gen_reg,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_GEN_REG));
  writel_relaxed(priv->viu.vd1_if0_gen_reg2,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_GEN_REG2));
  writel_relaxed(priv->viu.viu_vd1_fmt_ctrl,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VIU_VD1_FMT_CTRL));
  writel_relaxed(priv->viu.viu_vd1_fmt_ctrl,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VIU_VD2_FMT_CTRL));
  writel_relaxed(priv->viu.viu_vd1_fmt_w,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VIU_VD1_FMT_W));
  writel_relaxed(priv->viu.viu_vd1_fmt_w,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VIU_VD2_FMT_W));
  writel_relaxed(priv->viu.vd1_if0_canvas0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_CANVAS0));
  writel_relaxed(priv->viu.vd1_if0_canvas0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_CANVAS1));
  writel_relaxed(priv->viu.vd1_if0_canvas0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_CANVAS0));
  writel_relaxed(priv->viu.vd1_if0_canvas0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_CANVAS1));
  writel_relaxed(priv->viu.vd1_if0_luma_x0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_LUMA_X0));
  writel_relaxed(priv->viu.vd1_if0_luma_x0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_LUMA_X1));
  writel_relaxed(priv->viu.vd1_if0_luma_x0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_LUMA_X0));
  writel_relaxed(priv->viu.vd1_if0_luma_x0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_LUMA_X1));
  writel_relaxed(priv->viu.vd1_if0_luma_y0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_LUMA_Y0));
  writel_relaxed(priv->viu.vd1_if0_luma_y0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_LUMA_Y1));
  writel_relaxed(priv->viu.vd1_if0_luma_y0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_LUMA_Y0));
  writel_relaxed(priv->viu.vd1_if0_luma_y0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_LUMA_Y1));
  writel_relaxed(priv->viu.vd1_if0_chroma_x0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_CHROMA_X0));
  writel_relaxed(priv->viu.vd1_if0_chroma_x0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_CHROMA_X1));
  writel_relaxed(priv->viu.vd1_if0_chroma_x0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_CHROMA_X0));
  writel_relaxed(priv->viu.vd1_if0_chroma_x0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_CHROMA_X1));
  writel_relaxed(priv->viu.vd1_if0_chroma_y0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_CHROMA_Y0));
  writel_relaxed(priv->viu.vd1_if0_chroma_y0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_CHROMA_Y1));
  writel_relaxed(priv->viu.vd1_if0_chroma_y0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_CHROMA_Y0));
  writel_relaxed(priv->viu.vd1_if0_chroma_y0,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_CHROMA_Y1));
  writel_relaxed(priv->viu.vd1_if0_repeat_loop,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_RPT_LOOP));
  writel_relaxed(priv->viu.vd1_if0_repeat_loop,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_RPT_LOOP));
  writel_relaxed(priv->viu.vd1_if0_luma0_rpt_pat,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_LUMA0_RPT_PAT));
  writel_relaxed(priv->viu.vd1_if0_luma0_rpt_pat,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_LUMA0_RPT_PAT));
  writel_relaxed(priv->viu.vd1_if0_luma0_rpt_pat,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_LUMA1_RPT_PAT));
  writel_relaxed(priv->viu.vd1_if0_luma0_rpt_pat,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_LUMA1_RPT_PAT));
  writel_relaxed(priv->viu.vd1_if0_chroma0_rpt_pat,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_CHROMA0_RPT_PAT));
  writel_relaxed(priv->viu.vd1_if0_chroma0_rpt_pat,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_CHROMA0_RPT_PAT));
  writel_relaxed(priv->viu.vd1_if0_chroma0_rpt_pat,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_CHROMA1_RPT_PAT));
  writel_relaxed(priv->viu.vd1_if0_chroma0_rpt_pat,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_CHROMA1_RPT_PAT));
  writel_relaxed(0, priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_LUMA_PSEL));
  writel_relaxed(0, priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_CHROMA_PSEL));
  writel_relaxed(0, priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_LUMA_PSEL));
  writel_relaxed(0, priv->io_base + meson_crtc->viu_offset +
    _REG(VD2_IF0_CHROMA_PSEL));
  writel_relaxed(priv->viu.vd1_range_map_y,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_RANGE_MAP_Y));
  writel_relaxed(priv->viu.vd1_range_map_cb,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_RANGE_MAP_CB));
  writel_relaxed(priv->viu.vd1_range_map_cr,
    priv->io_base + meson_crtc->viu_offset +
    _REG(VD1_IF0_RANGE_MAP_CR));
  writel_relaxed(VPP_VSC_BANK_LENGTH(4) |
          VPP_HSC_BANK_LENGTH(4) |
          VPP_SC_VD_EN_ENABLE |
          VPP_SC_TOP_EN_ENABLE |
          VPP_SC_HSC_EN_ENABLE |
          VPP_SC_VSC_EN_ENABLE,
    priv->io_base + _REG(VPP_SC_MISC));
  writel_relaxed(priv->viu.vpp_pic_in_height,
    priv->io_base + _REG(VPP_PIC_IN_HEIGHT));
  writel_relaxed(priv->viu.vpp_postblend_vd1_h_start_end,
   priv->io_base + _REG(VPP_POSTBLEND_VD1_H_START_END));
  writel_relaxed(priv->viu.vpp_blend_vd2_h_start_end,
   priv->io_base + _REG(VPP_BLEND_VD2_H_START_END));
  writel_relaxed(priv->viu.vpp_postblend_vd1_v_start_end,
   priv->io_base + _REG(VPP_POSTBLEND_VD1_V_START_END));
  writel_relaxed(priv->viu.vpp_blend_vd2_v_start_end,
   priv->io_base + _REG(VPP_BLEND_VD2_V_START_END));
  writel_relaxed(priv->viu.vpp_hsc_region12_startp,
    priv->io_base + _REG(VPP_HSC_REGION12_STARTP));
  writel_relaxed(priv->viu.vpp_hsc_region34_startp,
    priv->io_base + _REG(VPP_HSC_REGION34_STARTP));
  writel_relaxed(priv->viu.vpp_hsc_region4_endp,
    priv->io_base + _REG(VPP_HSC_REGION4_ENDP));
  writel_relaxed(priv->viu.vpp_hsc_start_phase_step,
    priv->io_base + _REG(VPP_HSC_START_PHASE_STEP));
  writel_relaxed(priv->viu.vpp_hsc_region1_phase_slope,
   priv->io_base + _REG(VPP_HSC_REGION1_PHASE_SLOPE));
  writel_relaxed(priv->viu.vpp_hsc_region3_phase_slope,
   priv->io_base + _REG(VPP_HSC_REGION3_PHASE_SLOPE));
  writel_relaxed(priv->viu.vpp_line_in_length,
    priv->io_base + _REG(VPP_LINE_IN_LENGTH));
  writel_relaxed(priv->viu.vpp_preblend_h_size,
    priv->io_base + _REG(VPP_PREBLEND_H_SIZE));
  writel_relaxed(priv->viu.vpp_vsc_region12_startp,
    priv->io_base + _REG(VPP_VSC_REGION12_STARTP));
  writel_relaxed(priv->viu.vpp_vsc_region34_startp,
    priv->io_base + _REG(VPP_VSC_REGION34_STARTP));
  writel_relaxed(priv->viu.vpp_vsc_region4_endp,
    priv->io_base + _REG(VPP_VSC_REGION4_ENDP));
  writel_relaxed(priv->viu.vpp_vsc_start_phase_step,
    priv->io_base + _REG(VPP_VSC_START_PHASE_STEP));
  writel_relaxed(priv->viu.vpp_vsc_ini_phase,
    priv->io_base + _REG(VPP_VSC_INI_PHASE));
  writel_relaxed(priv->viu.vpp_vsc_phase_ctrl,
    priv->io_base + _REG(VPP_VSC_PHASE_CTRL));
  writel_relaxed(priv->viu.vpp_hsc_phase_ctrl,
    priv->io_base + _REG(VPP_HSC_PHASE_CTRL));
  writel_relaxed(0x42, priv->io_base + _REG(VPP_SCALE_COEF_IDX));


  if (meson_crtc->enable_vd1)
   meson_crtc->enable_vd1(priv);

  priv->viu.vd1_commit = 0;
 }

 drm_crtc_handle_vblank(priv->crtc);

 spin_lock_irqsave(&priv->drm->event_lock, flags);
 if (meson_crtc->event) {
  drm_crtc_send_vblank_event(priv->crtc, meson_crtc->event);
  drm_crtc_vblank_put(priv->crtc);
  meson_crtc->event = ((void*)0);
 }
 spin_unlock_irqrestore(&priv->drm->event_lock, flags);
}
