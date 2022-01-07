
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_dvo {int enabled; int clk; int clk_pix; int panel; scalar_t__ regs; TYPE_1__* config; } ;
struct drm_bridge {struct sti_dvo* driver_private; } ;
struct TYPE_2__ {scalar_t__ awg_fwgen_fct; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 scalar_t__ DVO_AWG_DIGSYNC_CTRL ;
 scalar_t__ DVO_DOF_CFG ;
 int clk_disable_unprepare (int ) ;
 int drm_panel_disable (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sti_dvo_disable(struct drm_bridge *bridge)
{
 struct sti_dvo *dvo = bridge->driver_private;

 if (!dvo->enabled)
  return;

 DRM_DEBUG_DRIVER("\n");

 if (dvo->config->awg_fwgen_fct)
  writel(0x00000000, dvo->regs + DVO_AWG_DIGSYNC_CTRL);

 writel(0x00000000, dvo->regs + DVO_DOF_CFG);

 drm_panel_disable(dvo->panel);


 clk_disable_unprepare(dvo->clk_pix);
 clk_disable_unprepare(dvo->clk);

 dvo->enabled = 0;
}
