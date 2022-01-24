#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ normalize_zpos; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_atomic_state {int async_update; scalar_t__ legacy_cursor_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int FUNC1 (struct drm_device*,struct drm_atomic_state*) ; 
 int FUNC2 (struct drm_device*,struct drm_atomic_state*) ; 
 int FUNC3 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_atomic_state*) ; 

int FUNC5(struct drm_device *dev,
			    struct drm_atomic_state *state)
{
	int ret;

	ret = FUNC1(dev, state);
	if (ret)
		return ret;

	if (dev->mode_config.normalize_zpos) {
		ret = FUNC3(dev, state);
		if (ret)
			return ret;
	}

	ret = FUNC2(dev, state);
	if (ret)
		return ret;

	if (state->legacy_cursor_update)
		state->async_update = !FUNC0(dev, state);

	FUNC4(state);

	return ret;
}