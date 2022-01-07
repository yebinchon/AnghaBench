
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mipi_dsi {int mode_flags; scalar_t__ vpg_horizontal; scalar_t__ vpg; } ;


 int DSI_VID_MODE_CFG ;
 int ENABLE_LOW_POWER ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ;
 int VID_MODE_TYPE_BURST ;
 int VID_MODE_TYPE_NON_BURST_SYNC_EVENTS ;
 int VID_MODE_TYPE_NON_BURST_SYNC_PULSES ;
 int VID_MODE_VPG_ENABLE ;
 int VID_MODE_VPG_HORIZONTAL ;
 int dsi_write (struct dw_mipi_dsi*,int ,int ) ;

__attribute__((used)) static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
{
 u32 val;






 val = ENABLE_LOW_POWER;

 if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
  val |= VID_MODE_TYPE_BURST;
 else if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
  val |= VID_MODE_TYPE_NON_BURST_SYNC_PULSES;
 else
  val |= VID_MODE_TYPE_NON_BURST_SYNC_EVENTS;
 dsi_write(dsi, DSI_VID_MODE_CFG, val);
}
