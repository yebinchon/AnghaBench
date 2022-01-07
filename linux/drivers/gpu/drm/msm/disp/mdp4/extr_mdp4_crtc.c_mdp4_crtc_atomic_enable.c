
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
 int crtc_flush (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 struct mdp4_kms* get_kms (struct drm_crtc*) ;
 int mdp4_enable (struct mdp4_kms*) ;
 int mdp_irq_register (int *,int *) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

__attribute__((used)) static void mdp4_crtc_atomic_enable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);
 struct mdp4_kms *mdp4_kms = get_kms(crtc);

 DBG("%s", mdp4_crtc->name);

 if (WARN_ON(mdp4_crtc->enabled))
  return;

 mdp4_enable(mdp4_kms);


 drm_crtc_vblank_on(crtc);

 mdp_irq_register(&mdp4_kms->base, &mdp4_crtc->err);

 crtc_flush(crtc);

 mdp4_crtc->enabled = 1;
}
