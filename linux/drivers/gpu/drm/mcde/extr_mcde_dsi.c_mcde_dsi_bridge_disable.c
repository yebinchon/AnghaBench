
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mcde_dsi {int lp_clk; int hs_clk; scalar_t__ regs; TYPE_1__* mdsi; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_2__ {int mode_flags; } ;


 scalar_t__ DSI_MCTL_MAIN_DATA_CTL ;
 int DSI_MCTL_MAIN_DATA_CTL_VID_EN ;
 scalar_t__ DSI_VID_MODE_STS_CTL ;
 int MIPI_DSI_MODE_VIDEO ;
 struct mcde_dsi* bridge_to_mcde_dsi (struct drm_bridge*) ;
 int clk_disable_unprepare (int ) ;
 int mcde_dsi_wait_for_command_mode_stop (struct mcde_dsi*) ;
 int mcde_dsi_wait_for_video_mode_stop (struct mcde_dsi*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mcde_dsi_bridge_disable(struct drm_bridge *bridge)
{
 struct mcde_dsi *d = bridge_to_mcde_dsi(bridge);
 u32 val;


 writel(0, d->regs + DSI_VID_MODE_STS_CTL);

 if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO) {

  val = readl(d->regs + DSI_MCTL_MAIN_DATA_CTL);
  val &= ~DSI_MCTL_MAIN_DATA_CTL_VID_EN;
  writel(val, d->regs + DSI_MCTL_MAIN_DATA_CTL);
  mcde_dsi_wait_for_video_mode_stop(d);
 } else {

  mcde_dsi_wait_for_command_mode_stop(d);
 }


 clk_disable_unprepare(d->hs_clk);
 clk_disable_unprepare(d->lp_clk);
}
