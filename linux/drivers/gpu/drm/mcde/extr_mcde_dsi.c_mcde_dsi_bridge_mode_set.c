
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mcde_dsi {scalar_t__ regs; TYPE_1__* mdsi; void* hs_freq; int dev; int hs_clk; void* lp_freq; int lp_clk; } ;
struct drm_display_mode {int clock; int vdisplay; int hdisplay; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_2__ {int mode_flags; long lp_rate; long hs_rate; } ;


 scalar_t__ DSI_CMD_MODE_CTL ;
 int DSI_CMD_MODE_CTL_IF1_ID_MASK ;
 unsigned long DSI_DEFAULT_HS_FREQ_HZ ;
 unsigned long DSI_DEFAULT_LP_FREQ_HZ ;
 int MIPI_DSI_MODE_VIDEO ;
 struct mcde_dsi* bridge_to_mcde_dsi (struct drm_bridge*) ;
 int clk_prepare_enable (int ) ;
 void* clk_round_rate (int ,unsigned long) ;
 int clk_set_rate (int ,void*) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,void*,...) ;
 int mcde_dsi_setup_video_mode (struct mcde_dsi*,struct drm_display_mode const*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mcde_dsi_bridge_mode_set(struct drm_bridge *bridge,
         const struct drm_display_mode *mode,
         const struct drm_display_mode *adj)
{
 struct mcde_dsi *d = bridge_to_mcde_dsi(bridge);
 unsigned long pixel_clock_hz = mode->clock * 1000;
 unsigned long hs_freq, lp_freq;
 u32 val;
 int ret;

 if (!d->mdsi) {
  dev_err(d->dev, "no DSI device attached to encoder!\n");
  return;
 }

 dev_info(d->dev, "set DSI master to %dx%d %lu Hz %s mode\n",
   mode->hdisplay, mode->vdisplay, pixel_clock_hz,
   (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO) ? "VIDEO" : "CMD"
  );


 if (d->mdsi->lp_rate)
  lp_freq = d->mdsi->lp_rate;
 else
  lp_freq = DSI_DEFAULT_LP_FREQ_HZ;
 if (d->mdsi->hs_rate)
  hs_freq = d->mdsi->hs_rate;
 else
  hs_freq = DSI_DEFAULT_HS_FREQ_HZ;


 d->lp_freq = clk_round_rate(d->lp_clk, lp_freq);
 ret = clk_set_rate(d->lp_clk, d->lp_freq);
 if (ret)
  dev_err(d->dev, "failed to set LP clock rate %lu Hz\n",
   d->lp_freq);

 d->hs_freq = clk_round_rate(d->hs_clk, hs_freq);
 ret = clk_set_rate(d->hs_clk, d->hs_freq);
 if (ret)
  dev_err(d->dev, "failed to set HS clock rate %lu Hz\n",
   d->hs_freq);


 ret = clk_prepare_enable(d->lp_clk);
 if (ret)
  dev_err(d->dev, "failed to enable LP clock\n");
 else
  dev_info(d->dev, "DSI LP clock rate %lu Hz\n",
    d->lp_freq);
 ret = clk_prepare_enable(d->hs_clk);
 if (ret)
  dev_err(d->dev, "failed to enable HS clock\n");
 else
  dev_info(d->dev, "DSI HS clock rate %lu Hz\n",
    d->hs_freq);

 if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO) {
  mcde_dsi_setup_video_mode(d, mode);
 } else {

  val = readl(d->regs + DSI_CMD_MODE_CTL);





  val &= ~DSI_CMD_MODE_CTL_IF1_ID_MASK;
  writel(val, d->regs + DSI_CMD_MODE_CTL);
 }
}
