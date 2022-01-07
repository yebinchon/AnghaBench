
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct drm_connector {TYPE_3__* encoder; int state; } ;
struct dm_crtc_state {TYPE_2__* stream; } ;
struct amdgpu_dm_connector {scalar_t__ dc_sink; int base; } ;
struct TYPE_4__ {int state; } ;
struct amdgpu_crtc {TYPE_1__ base; } ;
struct TYPE_6__ {int crtc; } ;
struct TYPE_5__ {scalar_t__ sink; } ;


 int dm_force_atomic_commit (int *) ;
 struct amdgpu_crtc* to_amdgpu_crtc (int ) ;
 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;
 struct dm_crtc_state* to_dm_crtc_state (int ) ;

void dm_restore_drm_connector_state(struct drm_device *dev,
        struct drm_connector *connector)
{
 struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
 struct amdgpu_crtc *disconnected_acrtc;
 struct dm_crtc_state *acrtc_state;

 if (!aconnector->dc_sink || !connector->state || !connector->encoder)
  return;

 disconnected_acrtc = to_amdgpu_crtc(connector->encoder->crtc);
 if (!disconnected_acrtc)
  return;

 acrtc_state = to_dm_crtc_state(disconnected_acrtc->base.state);
 if (!acrtc_state->stream)
  return;






 if (acrtc_state->stream->sink != aconnector->dc_sink)
  dm_force_atomic_commit(&aconnector->base);
}
