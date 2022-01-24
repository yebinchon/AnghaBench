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
struct TYPE_2__ {struct drm_atomic_state* suspend_state; } ;
struct drm_device {TYPE_1__ mode_config; int /*<<< orphan*/  fb_helper; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_atomic_state*) ; 
 int FUNC1 (struct drm_atomic_state*) ; 
 struct drm_atomic_state* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 

int FUNC6(struct drm_device *dev)
{
	struct drm_atomic_state *state;

	if (!dev)
		return 0;

	FUNC4(dev);
	FUNC3(dev->fb_helper, 1);
	state = FUNC2(dev);
	if (FUNC0(state)) {
		FUNC3(dev->fb_helper, 0);
		FUNC5(dev);
		return FUNC1(state);
	}

	dev->mode_config.suspend_state = state;

	return 0;
}