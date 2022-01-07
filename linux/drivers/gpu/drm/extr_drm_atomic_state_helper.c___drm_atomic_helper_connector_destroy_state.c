
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int hdr_output_metadata; scalar_t__ writeback_job; scalar_t__ commit; int connector; scalar_t__ crtc; } ;


 int drm_connector_put (int ) ;
 int drm_crtc_commit_put (scalar_t__) ;
 int drm_property_blob_put (int ) ;
 int drm_writeback_cleanup_job (scalar_t__) ;

void
__drm_atomic_helper_connector_destroy_state(struct drm_connector_state *state)
{
 if (state->crtc)
  drm_connector_put(state->connector);

 if (state->commit)
  drm_crtc_commit_put(state->commit);

 if (state->writeback_job)
  drm_writeback_cleanup_job(state->writeback_job);

 drm_property_blob_put(state->hdr_output_metadata);
}
