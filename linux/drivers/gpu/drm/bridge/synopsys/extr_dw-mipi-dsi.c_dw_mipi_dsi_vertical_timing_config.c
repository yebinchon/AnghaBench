
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dw_mipi_dsi {int dummy; } ;
struct drm_display_mode {scalar_t__ vsync_end; scalar_t__ vtotal; scalar_t__ vdisplay; scalar_t__ vsync_start; } ;


 int DSI_VID_VACTIVE_LINES ;
 int DSI_VID_VBP_LINES ;
 int DSI_VID_VFP_LINES ;
 int DSI_VID_VSA_LINES ;
 int dsi_write (struct dw_mipi_dsi*,int ,scalar_t__) ;

__attribute__((used)) static void dw_mipi_dsi_vertical_timing_config(struct dw_mipi_dsi *dsi,
     const struct drm_display_mode *mode)
{
 u32 vactive, vsa, vfp, vbp;

 vactive = mode->vdisplay;
 vsa = mode->vsync_end - mode->vsync_start;
 vfp = mode->vsync_start - mode->vdisplay;
 vbp = mode->vtotal - mode->vsync_end;

 dsi_write(dsi, DSI_VID_VACTIVE_LINES, vactive);
 dsi_write(dsi, DSI_VID_VSA_LINES, vsa);
 dsi_write(dsi, DSI_VID_VFP_LINES, vfp);
 dsi_write(dsi, DSI_VID_VBP_LINES, vbp);
}
