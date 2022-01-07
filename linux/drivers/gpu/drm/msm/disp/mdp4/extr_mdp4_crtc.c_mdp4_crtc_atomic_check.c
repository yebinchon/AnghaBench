
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_crtc {int name; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int DBG (char*,int ) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

__attribute__((used)) static int mdp4_crtc_atomic_check(struct drm_crtc *crtc,
  struct drm_crtc_state *state)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);
 DBG("%s: check", mdp4_crtc->name);

 return 0;
}
