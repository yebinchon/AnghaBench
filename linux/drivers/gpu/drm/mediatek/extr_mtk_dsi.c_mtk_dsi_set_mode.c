
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dsi {int mode_flags; scalar_t__ regs; } ;


 int BURST_MODE ;
 int CMD_MODE ;
 scalar_t__ DSI_MODE_CTRL ;
 int MIPI_DSI_MODE_VIDEO ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ;
 int SYNC_EVENT_MODE ;
 int SYNC_PULSE_MODE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_dsi_set_mode(struct mtk_dsi *dsi)
{
 u32 vid_mode = CMD_MODE;

 if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO) {
  if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
   vid_mode = BURST_MODE;
  else if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
   vid_mode = SYNC_PULSE_MODE;
  else
   vid_mode = SYNC_EVENT_MODE;
 }

 writel(vid_mode, dsi->regs + DSI_MODE_CTRL);
}
