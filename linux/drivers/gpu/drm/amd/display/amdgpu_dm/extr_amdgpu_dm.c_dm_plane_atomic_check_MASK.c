#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct dm_plane_state {int /*<<< orphan*/  dc_state; } ;
struct dc_scaling_info {int dummy; } ;
struct dc {int dummy; } ;
struct TYPE_4__ {struct dc* dc; } ;
struct amdgpu_device {TYPE_2__ dm; } ;
struct TYPE_3__ {struct amdgpu_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ DC_OK ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_plane_state*,struct dc_scaling_info*) ; 
 struct dm_plane_state* FUNC2 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC3(struct drm_plane *plane,
				 struct drm_plane_state *state)
{
	struct amdgpu_device *adev = plane->dev->dev_private;
	struct dc *dc = adev->dm.dc;
	struct dm_plane_state *dm_plane_state;
	struct dc_scaling_info scaling_info;
	int ret;

	dm_plane_state = FUNC2(state);

	if (!dm_plane_state->dc_state)
		return 0;

	ret = FUNC1(state, &scaling_info);
	if (ret)
		return ret;

	if (FUNC0(dc, dm_plane_state->dc_state) == DC_OK)
		return 0;

	return -EINVAL;
}