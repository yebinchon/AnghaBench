
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct dm_plane_state {int dc_state; } ;
struct dc_scaling_info {int dummy; } ;
struct dc {int dummy; } ;
struct TYPE_4__ {struct dc* dc; } ;
struct amdgpu_device {TYPE_2__ dm; } ;
struct TYPE_3__ {struct amdgpu_device* dev_private; } ;


 scalar_t__ DC_OK ;
 int EINVAL ;
 scalar_t__ dc_validate_plane (struct dc*,int ) ;
 int fill_dc_scaling_info (struct drm_plane_state*,struct dc_scaling_info*) ;
 struct dm_plane_state* to_dm_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static int dm_plane_atomic_check(struct drm_plane *plane,
     struct drm_plane_state *state)
{
 struct amdgpu_device *adev = plane->dev->dev_private;
 struct dc *dc = adev->dm.dc;
 struct dm_plane_state *dm_plane_state;
 struct dc_scaling_info scaling_info;
 int ret;

 dm_plane_state = to_dm_plane_state(state);

 if (!dm_plane_state->dc_state)
  return 0;

 ret = fill_dc_scaling_info(state, &scaling_info);
 if (ret)
  return ret;

 if (dc_validate_plane(dc, dm_plane_state->dc_state) == DC_OK)
  return 0;

 return -EINVAL;
}
