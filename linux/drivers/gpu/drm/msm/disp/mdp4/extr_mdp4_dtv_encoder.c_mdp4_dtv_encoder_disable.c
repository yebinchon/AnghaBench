
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_kms {int base; } ;
struct mdp4_dtv_encoder {int enabled; int mdp_clk; int hdmi_clk; } ;
struct drm_encoder {int dummy; } ;


 int MDP4_IRQ_EXTERNAL_VSYNC ;
 int REG_MDP4_DTV_ENABLE ;
 scalar_t__ WARN_ON (int) ;
 int bs_set (struct mdp4_dtv_encoder*,int ) ;
 int clk_disable_unprepare (int ) ;
 struct mdp4_kms* get_kms (struct drm_encoder*) ;
 int mdp4_write (struct mdp4_kms*,int ,int ) ;
 int mdp_irq_wait (int *,int ) ;
 struct mdp4_dtv_encoder* to_mdp4_dtv_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mdp4_dtv_encoder_disable(struct drm_encoder *encoder)
{
 struct mdp4_dtv_encoder *mdp4_dtv_encoder = to_mdp4_dtv_encoder(encoder);
 struct mdp4_kms *mdp4_kms = get_kms(encoder);

 if (WARN_ON(!mdp4_dtv_encoder->enabled))
  return;

 mdp4_write(mdp4_kms, REG_MDP4_DTV_ENABLE, 0);
 mdp_irq_wait(&mdp4_kms->base, MDP4_IRQ_EXTERNAL_VSYNC);

 clk_disable_unprepare(mdp4_dtv_encoder->hdmi_clk);
 clk_disable_unprepare(mdp4_dtv_encoder->mdp_clk);

 bs_set(mdp4_dtv_encoder, 0);

 mdp4_dtv_encoder->enabled = 0;
}
