
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct mdp4_kms {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int mdp4_crtc_vblank (struct drm_crtc*) ;
 int mdp4_disable (struct mdp4_kms*) ;
 int mdp4_enable (struct mdp4_kms*) ;
 int mdp_update_vblank_mask (int ,int ,int) ;
 struct mdp4_kms* to_mdp4_kms (int ) ;
 int to_mdp_kms (struct msm_kms*) ;

int mdp4_enable_vblank(struct msm_kms *kms, struct drm_crtc *crtc)
{
 struct mdp4_kms *mdp4_kms = to_mdp4_kms(to_mdp_kms(kms));

 mdp4_enable(mdp4_kms);
 mdp_update_vblank_mask(to_mdp_kms(kms),
   mdp4_crtc_vblank(crtc), 1);
 mdp4_disable(mdp4_kms);

 return 0;
}
