
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_kms {int base; } ;
struct mdp4_dsi_encoder {int enabled; } ;
struct drm_encoder {int dummy; } ;


 int MDP4_IRQ_PRIMARY_VSYNC ;
 int REG_MDP4_DSI_ENABLE ;
 struct mdp4_kms* get_kms (struct drm_encoder*) ;
 int mdp4_write (struct mdp4_kms*,int ,int ) ;
 int mdp_irq_wait (int *,int ) ;
 struct mdp4_dsi_encoder* to_mdp4_dsi_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mdp4_dsi_encoder_disable(struct drm_encoder *encoder)
{
 struct mdp4_dsi_encoder *mdp4_dsi_encoder = to_mdp4_dsi_encoder(encoder);
 struct mdp4_kms *mdp4_kms = get_kms(encoder);

 if (!mdp4_dsi_encoder->enabled)
  return;

 mdp4_write(mdp4_kms, REG_MDP4_DSI_ENABLE, 0);
 mdp_irq_wait(&mdp4_kms->base, MDP4_IRQ_PRIMARY_VSYNC);

 mdp4_dsi_encoder->enabled = 0;
}
