
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_plane_state {int mode_changed; } ;
struct drm_plane {int dummy; } ;
struct TYPE_5__ {int acquire_ctx; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct drm_crtc_state {int mode_changed; } ;
struct drm_connector_state {int mode_changed; } ;
struct drm_connector {TYPE_1__* encoder; struct drm_device* dev; } ;
struct drm_atomic_state {int acquire_ctx; } ;
struct TYPE_6__ {struct drm_plane* primary; } ;
struct amdgpu_crtc {TYPE_3__ base; } ;
struct TYPE_4__ {int crtc; } ;


 int DRM_ERROR (char*,int) ;
 int ENOMEM ;
 int PTR_ERR_OR_ZERO (struct drm_plane_state*) ;
 int drm_atomic_commit (struct drm_atomic_state*) ;
 struct drm_plane_state* drm_atomic_get_connector_state (struct drm_atomic_state*,struct drm_connector*) ;
 struct drm_plane_state* drm_atomic_get_crtc_state (struct drm_atomic_state*,TYPE_3__*) ;
 struct drm_plane_state* drm_atomic_get_plane_state (struct drm_atomic_state*,struct drm_plane*) ;
 struct drm_atomic_state* drm_atomic_state_alloc (struct drm_device*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 struct amdgpu_crtc* to_amdgpu_crtc (int ) ;

__attribute__((used)) static int dm_force_atomic_commit(struct drm_connector *connector)
{
 int ret = 0;
 struct drm_device *ddev = connector->dev;
 struct drm_atomic_state *state = drm_atomic_state_alloc(ddev);
 struct amdgpu_crtc *disconnected_acrtc = to_amdgpu_crtc(connector->encoder->crtc);
 struct drm_plane *plane = disconnected_acrtc->base.primary;
 struct drm_connector_state *conn_state;
 struct drm_crtc_state *crtc_state;
 struct drm_plane_state *plane_state;

 if (!state)
  return -ENOMEM;

 state->acquire_ctx = ddev->mode_config.acquire_ctx;






 conn_state = drm_atomic_get_connector_state(state, connector);

 ret = PTR_ERR_OR_ZERO(conn_state);
 if (ret)
  goto err;


 crtc_state = drm_atomic_get_crtc_state(state, &disconnected_acrtc->base);

 ret = PTR_ERR_OR_ZERO(crtc_state);
 if (ret)
  goto err;


 crtc_state->mode_changed = 1;


 plane_state = drm_atomic_get_plane_state(state, plane);

 ret = PTR_ERR_OR_ZERO(plane_state);
 if (ret)
  goto err;



 ret = drm_atomic_commit(state);
 if (!ret)
  return 0;

err:
 DRM_ERROR("Restoring old state failed with %i\n", ret);
 drm_atomic_state_put(state);

 return ret;
}
