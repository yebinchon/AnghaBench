
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int bs_fini (struct mdp5_encoder*) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct mdp5_encoder*) ;
 struct mdp5_encoder* to_mdp5_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mdp5_encoder_destroy(struct drm_encoder *encoder)
{
 struct mdp5_encoder *mdp5_encoder = to_mdp5_encoder(encoder);
 bs_fini(mdp5_encoder);
 drm_encoder_cleanup(encoder);
 kfree(mdp5_encoder);
}
