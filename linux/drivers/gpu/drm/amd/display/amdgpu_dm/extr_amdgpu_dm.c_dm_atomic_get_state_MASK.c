#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_private_state {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_atomic_state {struct drm_device* dev; } ;
struct dm_atomic_state {int dummy; } ;
struct amdgpu_display_manager {int /*<<< orphan*/  atomic_obj; } ;
struct amdgpu_device {struct amdgpu_display_manager dm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_private_state*) ; 
 int FUNC1 (struct drm_private_state*) ; 
 struct drm_private_state* FUNC2 (struct drm_atomic_state*,int /*<<< orphan*/ *) ; 
 struct dm_atomic_state* FUNC3 (struct drm_private_state*) ; 

__attribute__((used)) static int FUNC4(struct drm_atomic_state *state,
			       struct dm_atomic_state **dm_state)
{
	struct drm_device *dev = state->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_display_manager *dm = &adev->dm;
	struct drm_private_state *priv_state;

	if (*dm_state)
		return 0;

	priv_state = FUNC2(state, &dm->atomic_obj);
	if (FUNC0(priv_state))
		return FUNC1(priv_state);

	*dm_state = FUNC3(priv_state);

	return 0;
}