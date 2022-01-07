
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_state {int saveDSPBCURSOR_BASE; int saveDSPBCURSOR_POS; int saveDSPBCURSOR_CTRL; } ;
struct psb_pipe {int * palette; int surf; int cntr; int tileoff; int stride; int linoff; int conf; int vsync; int vblank; int vtotal; int hsync; int hblank; int htotal; int src; } ;
struct oaktrail_hdmi_dev {int savePCH_PIPEBCONF; int savePCH_VSYNC_B; int savePCH_VBLANK_B; int savePCH_VTOTAL_B; int savePCH_HSYNC_B; int savePCH_HBLANK_B; int savePCH_HTOTAL_B; int savePCH_PIPEBSRC; int saveDPLL_CLK_ENABLE; int saveDPLL_UPDATE; int saveDPLL_ADJUST; int saveDPLL_DIV_CTRL; int saveDPLL_CTRL; } ;
struct TYPE_2__ {struct psb_pipe* pipe; struct psb_state psb; } ;
struct drm_psb_private {TYPE_1__ regs; struct oaktrail_hdmi_dev* hdmi_priv; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 scalar_t__ CURBBASE ;
 scalar_t__ CURBCNTR ;
 scalar_t__ CURBPOS ;
 scalar_t__ DPLL_ADJUST ;
 scalar_t__ DPLL_CLK_ENABLE ;
 scalar_t__ DPLL_CTRL ;
 scalar_t__ DPLL_DIV_CTRL ;
 scalar_t__ DPLL_UPDATE ;
 scalar_t__ DSPBCNTR ;
 scalar_t__ DSPBLINOFF ;
 scalar_t__ DSPBSTRIDE ;
 scalar_t__ DSPBSURF ;
 scalar_t__ DSPBTILEOFF ;
 scalar_t__ HBLANK_B ;
 scalar_t__ HSYNC_B ;
 scalar_t__ HTOTAL_B ;
 scalar_t__ PALETTE_B ;
 scalar_t__ PCH_HBLANK_B ;
 scalar_t__ PCH_HSYNC_B ;
 scalar_t__ PCH_HTOTAL_B ;
 scalar_t__ PCH_PIPEBCONF ;
 scalar_t__ PCH_PIPEBSRC ;
 scalar_t__ PCH_VBLANK_B ;
 scalar_t__ PCH_VSYNC_B ;
 scalar_t__ PCH_VTOTAL_B ;
 scalar_t__ PIPEBCONF ;
 scalar_t__ PIPEBSRC ;
 int PSB_WVDC32 (int ,scalar_t__) ;
 scalar_t__ VBLANK_B ;
 scalar_t__ VSYNC_B ;
 scalar_t__ VTOTAL_B ;
 int udelay (int) ;

void oaktrail_hdmi_restore(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct oaktrail_hdmi_dev *hdmi_dev = dev_priv->hdmi_priv;
 struct psb_state *regs = &dev_priv->regs.psb;
 struct psb_pipe *pipeb = &dev_priv->regs.pipe[1];
 int i;


 PSB_WVDC32(hdmi_dev->saveDPLL_CTRL, DPLL_CTRL);
 PSB_WVDC32(hdmi_dev->saveDPLL_DIV_CTRL, DPLL_DIV_CTRL);
 PSB_WVDC32(hdmi_dev->saveDPLL_ADJUST, DPLL_ADJUST);
 PSB_WVDC32(hdmi_dev->saveDPLL_UPDATE, DPLL_UPDATE);
 PSB_WVDC32(hdmi_dev->saveDPLL_CLK_ENABLE, DPLL_CLK_ENABLE);
 udelay(150);


 PSB_WVDC32(pipeb->src, PIPEBSRC);
 PSB_WVDC32(pipeb->htotal, HTOTAL_B);
 PSB_WVDC32(pipeb->hblank, HBLANK_B);
 PSB_WVDC32(pipeb->hsync, HSYNC_B);
 PSB_WVDC32(pipeb->vtotal, VTOTAL_B);
 PSB_WVDC32(pipeb->vblank, VBLANK_B);
 PSB_WVDC32(pipeb->vsync, VSYNC_B);

 PSB_WVDC32(hdmi_dev->savePCH_PIPEBSRC, PCH_PIPEBSRC);
 PSB_WVDC32(hdmi_dev->savePCH_HTOTAL_B, PCH_HTOTAL_B);
 PSB_WVDC32(hdmi_dev->savePCH_HBLANK_B, PCH_HBLANK_B);
 PSB_WVDC32(hdmi_dev->savePCH_HSYNC_B, PCH_HSYNC_B);
 PSB_WVDC32(hdmi_dev->savePCH_VTOTAL_B, PCH_VTOTAL_B);
 PSB_WVDC32(hdmi_dev->savePCH_VBLANK_B, PCH_VBLANK_B);
 PSB_WVDC32(hdmi_dev->savePCH_VSYNC_B, PCH_VSYNC_B);

 PSB_WVDC32(pipeb->conf, PIPEBCONF);
 PSB_WVDC32(hdmi_dev->savePCH_PIPEBCONF, PCH_PIPEBCONF);


 PSB_WVDC32(pipeb->linoff, DSPBLINOFF);
 PSB_WVDC32(pipeb->stride, DSPBSTRIDE);
 PSB_WVDC32(pipeb->tileoff, DSPBTILEOFF);
 PSB_WVDC32(pipeb->cntr, DSPBCNTR);
 PSB_WVDC32(pipeb->surf, DSPBSURF);


 PSB_WVDC32(regs->saveDSPBCURSOR_CTRL, CURBCNTR);
 PSB_WVDC32(regs->saveDSPBCURSOR_POS, CURBPOS);
 PSB_WVDC32(regs->saveDSPBCURSOR_BASE, CURBBASE);


 for (i = 0; i < 256; i++)
  PSB_WVDC32(pipeb->palette[i], PALETTE_B + (i << 2));
}
