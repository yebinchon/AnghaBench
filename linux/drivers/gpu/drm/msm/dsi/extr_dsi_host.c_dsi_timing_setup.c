
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi_host {int mode_flags; int channel; int format; struct drm_display_mode* mode; } ;
struct drm_display_mode {int htotal; int vtotal; int hsync_end; int hsync_start; int vsync_end; int vsync_start; int hdisplay; int vdisplay; } ;


 int DBG (char*) ;
 int DSI_ACTIVE_HSYNC_END (int) ;
 int DSI_ACTIVE_HSYNC_START (int) ;
 int DSI_ACTIVE_H_END (int) ;
 int DSI_ACTIVE_H_START (int) ;
 int DSI_ACTIVE_VSYNC_VPOS_END (int) ;
 int DSI_ACTIVE_VSYNC_VPOS_START (int) ;
 int DSI_ACTIVE_V_END (int) ;
 int DSI_ACTIVE_V_START (int) ;
 int DSI_CMD_MDP_STREAM_CTRL_DATA_TYPE (int ) ;
 int DSI_CMD_MDP_STREAM_CTRL_VIRTUAL_CHANNEL (int ) ;
 int DSI_CMD_MDP_STREAM_CTRL_WORD_COUNT (int) ;
 int DSI_CMD_MDP_STREAM_TOTAL_H_TOTAL (int) ;
 int DSI_CMD_MDP_STREAM_TOTAL_V_TOTAL (int) ;
 int DSI_TOTAL_H_TOTAL (int) ;
 int DSI_TOTAL_V_TOTAL (int) ;
 int MIPI_DSI_DCS_LONG_WRITE ;
 int MIPI_DSI_MODE_VIDEO ;
 int REG_DSI_ACTIVE_H ;
 int REG_DSI_ACTIVE_HSYNC ;
 int REG_DSI_ACTIVE_V ;
 int REG_DSI_ACTIVE_VSYNC_HPOS ;
 int REG_DSI_ACTIVE_VSYNC_VPOS ;
 int REG_DSI_CMD_MDP_STREAM_CTRL ;
 int REG_DSI_CMD_MDP_STREAM_TOTAL ;
 int REG_DSI_TOTAL ;
 int dsi_get_bpp (int ) ;
 int dsi_write (struct msm_dsi_host*,int ,int) ;

__attribute__((used)) static void dsi_timing_setup(struct msm_dsi_host *msm_host, bool is_dual_dsi)
{
 struct drm_display_mode *mode = msm_host->mode;
 u32 hs_start = 0, vs_start = 0;
 u32 h_total = mode->htotal;
 u32 v_total = mode->vtotal;
 u32 hs_end = mode->hsync_end - mode->hsync_start;
 u32 vs_end = mode->vsync_end - mode->vsync_start;
 u32 ha_start = h_total - mode->hsync_start;
 u32 ha_end = ha_start + mode->hdisplay;
 u32 va_start = v_total - mode->vsync_start;
 u32 va_end = va_start + mode->vdisplay;
 u32 hdisplay = mode->hdisplay;
 u32 wc;

 DBG("");
 if (is_dual_dsi) {
  h_total /= 2;
  hs_end /= 2;
  ha_start /= 2;
  ha_end /= 2;
  hdisplay /= 2;
 }

 if (msm_host->mode_flags & MIPI_DSI_MODE_VIDEO) {
  dsi_write(msm_host, REG_DSI_ACTIVE_H,
   DSI_ACTIVE_H_START(ha_start) |
   DSI_ACTIVE_H_END(ha_end));
  dsi_write(msm_host, REG_DSI_ACTIVE_V,
   DSI_ACTIVE_V_START(va_start) |
   DSI_ACTIVE_V_END(va_end));
  dsi_write(msm_host, REG_DSI_TOTAL,
   DSI_TOTAL_H_TOTAL(h_total - 1) |
   DSI_TOTAL_V_TOTAL(v_total - 1));

  dsi_write(msm_host, REG_DSI_ACTIVE_HSYNC,
   DSI_ACTIVE_HSYNC_START(hs_start) |
   DSI_ACTIVE_HSYNC_END(hs_end));
  dsi_write(msm_host, REG_DSI_ACTIVE_VSYNC_HPOS, 0);
  dsi_write(msm_host, REG_DSI_ACTIVE_VSYNC_VPOS,
   DSI_ACTIVE_VSYNC_VPOS_START(vs_start) |
   DSI_ACTIVE_VSYNC_VPOS_END(vs_end));
 } else {

  wc = hdisplay * dsi_get_bpp(msm_host->format) / 8 + 1;

  dsi_write(msm_host, REG_DSI_CMD_MDP_STREAM_CTRL,
   DSI_CMD_MDP_STREAM_CTRL_WORD_COUNT(wc) |
   DSI_CMD_MDP_STREAM_CTRL_VIRTUAL_CHANNEL(
     msm_host->channel) |
   DSI_CMD_MDP_STREAM_CTRL_DATA_TYPE(
     MIPI_DSI_DCS_LONG_WRITE));

  dsi_write(msm_host, REG_DSI_CMD_MDP_STREAM_TOTAL,
   DSI_CMD_MDP_STREAM_TOTAL_H_TOTAL(hdisplay) |
   DSI_CMD_MDP_STREAM_TOTAL_V_TOTAL(mode->vdisplay));
 }
}
