
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc_state {int gamma_lut; int ctm; int degamma_lut; int mode_blob; TYPE_1__* commit; scalar_t__ event; } ;
struct TYPE_2__ {int * event; scalar_t__ abort_completion; } ;


 int drm_crtc_commit_put (TYPE_1__*) ;
 int drm_property_blob_put (int ) ;
 int kfree (int *) ;

void __drm_atomic_helper_crtc_destroy_state(struct drm_crtc_state *state)
{
 if (state->commit) {
  if (state->event && state->commit->abort_completion)
   drm_crtc_commit_put(state->commit);

  kfree(state->commit->event);
  state->commit->event = ((void*)0);

  drm_crtc_commit_put(state->commit);
 }

 drm_property_blob_put(state->mode_blob);
 drm_property_blob_put(state->degamma_lut);
 drm_property_blob_put(state->ctm);
 drm_property_blob_put(state->gamma_lut);
}
