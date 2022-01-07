
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {struct drm_crtc_commit* commit; } ;
struct drm_crtc_commit {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct drm_atomic_state {struct drm_crtc_commit* fake_commit; } ;


 int GFP_KERNEL ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (struct drm_atomic_state*,struct drm_crtc*) ;
 int init_commit (struct drm_crtc_commit*,int *) ;
 struct drm_crtc_commit* kzalloc (int,int ) ;

__attribute__((used)) static struct drm_crtc_commit *
crtc_or_fake_commit(struct drm_atomic_state *state, struct drm_crtc *crtc)
{
 if (crtc) {
  struct drm_crtc_state *new_crtc_state;

  new_crtc_state = drm_atomic_get_new_crtc_state(state, crtc);

  return new_crtc_state->commit;
 }

 if (!state->fake_commit) {
  state->fake_commit = kzalloc(sizeof(*state->fake_commit), GFP_KERNEL);
  if (!state->fake_commit)
   return ((void*)0);

  init_commit(state->fake_commit, ((void*)0));
 }

 return state->fake_commit;
}
