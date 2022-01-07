
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_kms {int base; } ;
struct mdp4_crtc {int enabled; int err; int name; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int DBG (char*,int ) ;
 scalar_t__ WARN_ON (int) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 struct mdp4_kms* get_kms (struct drm_crtc*) ;
 int mdp4_disable (struct mdp4_kms*) ;
 int mdp_irq_unregister (int *,int *) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

__attribute__((used)) static void mdp4_crtc_atomic_disable(struct drm_crtc *crtc,
         struct drm_crtc_state *old_state)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);
 struct mdp4_kms *mdp4_kms = get_kms(crtc);

 DBG("%s", mdp4_crtc->name);

 if (WARN_ON(!mdp4_crtc->enabled))
  return;


 drm_crtc_vblank_off(crtc);

 mdp_irq_unregister(&mdp4_kms->base, &mdp4_crtc->err);
 mdp4_disable(mdp4_kms);

 mdp4_crtc->enabled = 0;
}
