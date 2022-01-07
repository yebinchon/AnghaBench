
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_mixer {scalar_t__ id; int status; struct device* dev; } ;
struct sti_compositor {int clk_compo_aux; int clk_pix_aux; int clk_compo_main; int clk_pix_main; } ;
struct TYPE_2__ {int id; } ;
struct drm_crtc {TYPE_1__ base; } ;
struct device {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int STI_MIXER_DISABLED ;
 scalar_t__ STI_MIXER_MAIN ;
 int clk_disable_unprepare (int ) ;
 struct sti_compositor* dev_get_drvdata (struct device*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int sti_mixer_set_background_status (struct sti_mixer*,int) ;
 int sti_mixer_to_str (struct sti_mixer*) ;
 struct sti_mixer* to_sti_mixer (struct drm_crtc*) ;

__attribute__((used)) static void sti_crtc_disable(struct drm_crtc *crtc)
{
 struct sti_mixer *mixer = to_sti_mixer(crtc);
 struct device *dev = mixer->dev;
 struct sti_compositor *compo = dev_get_drvdata(dev);

 DRM_DEBUG_KMS("CRTC:%d (%s)\n", crtc->base.id, sti_mixer_to_str(mixer));


 sti_mixer_set_background_status(mixer, 0);

 drm_crtc_vblank_off(crtc);


 if (mixer->id == STI_MIXER_MAIN) {
  clk_disable_unprepare(compo->clk_pix_main);
  clk_disable_unprepare(compo->clk_compo_main);
 } else {
  clk_disable_unprepare(compo->clk_pix_aux);
  clk_disable_unprepare(compo->clk_compo_aux);
 }

 mixer->status = STI_MIXER_DISABLED;
}
