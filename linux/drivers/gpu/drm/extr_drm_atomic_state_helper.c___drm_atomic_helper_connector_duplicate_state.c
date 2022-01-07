
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int * writeback_job; scalar_t__ hdr_output_metadata; int * commit; scalar_t__ crtc; } ;
struct drm_connector {int state; } ;


 int drm_connector_get (struct drm_connector*) ;
 int drm_property_blob_get (scalar_t__) ;
 int memcpy (struct drm_connector_state*,int ,int) ;

void
__drm_atomic_helper_connector_duplicate_state(struct drm_connector *connector,
         struct drm_connector_state *state)
{
 memcpy(state, connector->state, sizeof(*state));
 if (state->crtc)
  drm_connector_get(connector);
 state->commit = ((void*)0);

 if (state->hdr_output_metadata)
  drm_property_blob_get(state->hdr_output_metadata);


 state->writeback_job = ((void*)0);
}
