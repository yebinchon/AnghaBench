
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_mixer {scalar_t__ id; } ;
struct sti_dvo {int * config; int clk; int clk_pix; struct clk* clk_aux_parent; struct clk* clk_main_parent; int mode; TYPE_1__* encoder; } ;
struct drm_display_mode {int clock; } ;
struct drm_bridge {struct sti_dvo* driver_private; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int crtc; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*,int) ;
 scalar_t__ STI_MIXER_MAIN ;
 int clk_set_parent (int ,struct clk*) ;
 int clk_set_rate (int ,int) ;
 int memcpy (int *,struct drm_display_mode const*,int) ;
 int rgb_24bit_de_cfg ;
 struct sti_mixer* to_sti_mixer (int ) ;

__attribute__((used)) static void sti_dvo_set_mode(struct drm_bridge *bridge,
        const struct drm_display_mode *mode,
        const struct drm_display_mode *adjusted_mode)
{
 struct sti_dvo *dvo = bridge->driver_private;
 struct sti_mixer *mixer = to_sti_mixer(dvo->encoder->crtc);
 int rate = mode->clock * 1000;
 struct clk *clkp;
 int ret;

 DRM_DEBUG_DRIVER("\n");

 memcpy(&dvo->mode, mode, sizeof(struct drm_display_mode));



 if (mixer->id == STI_MIXER_MAIN)
  clkp = dvo->clk_main_parent;
 else
  clkp = dvo->clk_aux_parent;

 if (clkp) {
  clk_set_parent(dvo->clk_pix, clkp);
  clk_set_parent(dvo->clk, clkp);
 }


 ret = clk_set_rate(dvo->clk_pix, rate);
 if (ret < 0) {
  DRM_ERROR("Cannot set rate (%dHz) for dvo_pix clk\n", rate);
  return;
 }

 ret = clk_set_rate(dvo->clk, rate);
 if (ret < 0) {
  DRM_ERROR("Cannot set rate (%dHz) for dvo clk\n", rate);
  return;
 }


 dvo->config = &rgb_24bit_de_cfg;
}
