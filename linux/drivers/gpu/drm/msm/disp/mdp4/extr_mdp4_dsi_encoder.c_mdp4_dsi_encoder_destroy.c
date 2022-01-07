
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_dsi_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct mdp4_dsi_encoder*) ;
 struct mdp4_dsi_encoder* to_mdp4_dsi_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mdp4_dsi_encoder_destroy(struct drm_encoder *encoder)
{
 struct mdp4_dsi_encoder *mdp4_dsi_encoder = to_mdp4_dsi_encoder(encoder);

 drm_encoder_cleanup(encoder);
 kfree(mdp4_dsi_encoder);
}
