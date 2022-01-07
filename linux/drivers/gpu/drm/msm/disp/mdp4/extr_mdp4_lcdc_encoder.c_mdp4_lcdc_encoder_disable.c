
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_lcdc_encoder {int enabled; int * regs; int lcdc_clk; int panel_node; } ;
struct mdp4_kms {int base; } ;
struct drm_panel {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int IS_ERR (struct drm_panel*) ;
 int MDP4_IRQ_PRIMARY_VSYNC ;
 int REG_MDP4_LCDC_ENABLE ;
 scalar_t__ WARN_ON (int) ;
 int bs_set (struct mdp4_lcdc_encoder*,int ) ;
 int clk_disable_unprepare (int ) ;
 int drm_panel_disable (struct drm_panel*) ;
 int drm_panel_unprepare (struct drm_panel*) ;
 struct mdp4_kms* get_kms (struct drm_encoder*) ;
 int mdp4_write (struct mdp4_kms*,int ,int ) ;
 int mdp_irq_wait (int *,int ) ;
 struct drm_panel* of_drm_find_panel (int ) ;
 int regulator_disable (int ) ;
 struct mdp4_lcdc_encoder* to_mdp4_lcdc_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mdp4_lcdc_encoder_disable(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct mdp4_lcdc_encoder *mdp4_lcdc_encoder =
   to_mdp4_lcdc_encoder(encoder);
 struct mdp4_kms *mdp4_kms = get_kms(encoder);
 struct drm_panel *panel;
 int i, ret;

 if (WARN_ON(!mdp4_lcdc_encoder->enabled))
  return;

 mdp4_write(mdp4_kms, REG_MDP4_LCDC_ENABLE, 0);

 panel = of_drm_find_panel(mdp4_lcdc_encoder->panel_node);
 if (!IS_ERR(panel)) {
  drm_panel_disable(panel);
  drm_panel_unprepare(panel);
 }
 mdp_irq_wait(&mdp4_kms->base, MDP4_IRQ_PRIMARY_VSYNC);

 clk_disable_unprepare(mdp4_lcdc_encoder->lcdc_clk);

 for (i = 0; i < ARRAY_SIZE(mdp4_lcdc_encoder->regs); i++) {
  ret = regulator_disable(mdp4_lcdc_encoder->regs[i]);
  if (ret)
   DRM_DEV_ERROR(dev->dev, "failed to disable regulator: %d\n", ret);
 }

 bs_set(mdp4_lcdc_encoder, 0);

 mdp4_lcdc_encoder->enabled = 0;
}
