
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_crtc_state {scalar_t__ active; scalar_t__ enable; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct dm_crtc_state {scalar_t__ active_planes; int stream; } ;
struct dc {int dummy; } ;
struct TYPE_4__ {struct dc* dc; } ;
struct amdgpu_device {TYPE_2__ dm; } ;
struct TYPE_3__ {struct amdgpu_device* dev_private; } ;


 scalar_t__ DC_OK ;
 int EINVAL ;
 int WARN_ON (int) ;
 scalar_t__ dc_validate_stream (struct dc*,int ) ;
 int dm_update_crtc_interrupt_state (struct drm_crtc*,struct drm_crtc_state*) ;
 scalar_t__ does_crtc_have_active_cursor (struct drm_crtc_state*) ;
 scalar_t__ modeset_required (struct drm_crtc_state*,int *,int ) ;
 struct dm_crtc_state* to_dm_crtc_state (struct drm_crtc_state*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dm_crtc_helper_atomic_check(struct drm_crtc *crtc,
           struct drm_crtc_state *state)
{
 struct amdgpu_device *adev = crtc->dev->dev_private;
 struct dc *dc = adev->dm.dc;
 struct dm_crtc_state *dm_crtc_state = to_dm_crtc_state(state);
 int ret = -EINVAL;







 dm_update_crtc_interrupt_state(crtc, state);

 if (unlikely(!dm_crtc_state->stream &&
       modeset_required(state, ((void*)0), dm_crtc_state->stream))) {
  WARN_ON(1);
  return ret;
 }


 if (!dm_crtc_state->stream)
  return 0;





 if (state->enable && state->active &&
     does_crtc_have_active_cursor(state) &&
     dm_crtc_state->active_planes == 0)
  return -EINVAL;

 if (dc_validate_stream(dc, dm_crtc_state->stream) == DC_OK)
  return 0;

 return ret;
}
