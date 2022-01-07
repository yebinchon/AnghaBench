
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_crtc_state {int dummy; } ;
struct komeda_crtc {int master; int slave; } ;
struct drm_crtc_state {scalar_t__ active; } ;
struct drm_crtc {int dummy; } ;


 scalar_t__ drm_atomic_crtc_needs_modeset (struct drm_crtc_state*) ;
 int komeda_build_display_data_flow (struct komeda_crtc*,struct komeda_crtc_state*) ;
 int komeda_crtc_update_clock_ratio (struct komeda_crtc_state*) ;
 int komeda_release_unclaimed_resources (int ,struct komeda_crtc_state*) ;
 struct komeda_crtc* to_kcrtc (struct drm_crtc*) ;
 struct komeda_crtc_state* to_kcrtc_st (struct drm_crtc_state*) ;

__attribute__((used)) static int
komeda_crtc_atomic_check(struct drm_crtc *crtc,
    struct drm_crtc_state *state)
{
 struct komeda_crtc *kcrtc = to_kcrtc(crtc);
 struct komeda_crtc_state *kcrtc_st = to_kcrtc_st(state);
 int err;

 if (drm_atomic_crtc_needs_modeset(state))
  komeda_crtc_update_clock_ratio(kcrtc_st);

 if (state->active) {
  err = komeda_build_display_data_flow(kcrtc, kcrtc_st);
  if (err)
   return err;
 }


 err = komeda_release_unclaimed_resources(kcrtc->slave, kcrtc_st);
 if (err)
  return err;

 err = komeda_release_unclaimed_resources(kcrtc->master, kcrtc_st);
 if (err)
  return err;

 return 0;
}
