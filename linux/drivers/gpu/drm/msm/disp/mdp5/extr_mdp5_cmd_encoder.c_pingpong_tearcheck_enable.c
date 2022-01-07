
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdp5_kms {int vsync_clk; } ;
struct mdp5_hw_mixer {int pp; } ;
struct drm_encoder {TYPE_1__* dev; int crtc; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int REG_MDP5_PP_TEAR_CHECK_EN (int) ;
 int VSYNC_CLK_RATE ;
 int clk_prepare_enable (int ) ;
 int clk_round_rate (int ,int ) ;
 int clk_set_rate (int ,int ) ;
 struct mdp5_kms* get_kms (struct drm_encoder*) ;
 struct mdp5_hw_mixer* mdp5_crtc_get_mixer (int ) ;
 int mdp5_write (struct mdp5_kms*,int ,int) ;

__attribute__((used)) static int pingpong_tearcheck_enable(struct drm_encoder *encoder)
{
 struct mdp5_kms *mdp5_kms = get_kms(encoder);
 struct mdp5_hw_mixer *mixer = mdp5_crtc_get_mixer(encoder->crtc);
 int pp_id = mixer->pp;
 int ret;

 ret = clk_set_rate(mdp5_kms->vsync_clk,
  clk_round_rate(mdp5_kms->vsync_clk, VSYNC_CLK_RATE));
 if (ret) {
  DRM_DEV_ERROR(encoder->dev->dev,
   "vsync_clk clk_set_rate failed, %d\n", ret);
  return ret;
 }
 ret = clk_prepare_enable(mdp5_kms->vsync_clk);
 if (ret) {
  DRM_DEV_ERROR(encoder->dev->dev,
   "vsync_clk clk_prepare_enable failed, %d\n", ret);
  return ret;
 }

 mdp5_write(mdp5_kms, REG_MDP5_PP_TEAR_CHECK_EN(pp_id), 1);

 return 0;
}
