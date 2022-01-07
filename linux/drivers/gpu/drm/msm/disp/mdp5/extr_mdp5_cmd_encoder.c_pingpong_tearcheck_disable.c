
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_kms {int vsync_clk; } ;
struct mdp5_hw_mixer {int pp; } ;
struct drm_encoder {int crtc; } ;


 int REG_MDP5_PP_TEAR_CHECK_EN (int) ;
 int clk_disable_unprepare (int ) ;
 struct mdp5_kms* get_kms (struct drm_encoder*) ;
 struct mdp5_hw_mixer* mdp5_crtc_get_mixer (int ) ;
 int mdp5_write (struct mdp5_kms*,int ,int ) ;

__attribute__((used)) static void pingpong_tearcheck_disable(struct drm_encoder *encoder)
{
 struct mdp5_kms *mdp5_kms = get_kms(encoder);
 struct mdp5_hw_mixer *mixer = mdp5_crtc_get_mixer(encoder->crtc);
 int pp_id = mixer->pp;

 mdp5_write(mdp5_kms, REG_MDP5_PP_TEAR_CHECK_EN(pp_id), 0);
 clk_disable_unprepare(mdp5_kms->vsync_clk);
}
