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
struct TYPE_2__ {int /*<<< orphan*/  num_total_plane; int /*<<< orphan*/  num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_atomic_state {int allow_modeset; struct drm_device* dev; void* planes; void* crtcs; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct drm_atomic_state*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_atomic_state*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct drm_device *dev, struct drm_atomic_state *state)
{
	FUNC3(&state->ref);

	/* TODO legacy paths should maybe do a better job about
	 * setting this appropriately?
	 */
	state->allow_modeset = true;

	state->crtcs = FUNC2(dev->mode_config.num_crtc,
			       sizeof(*state->crtcs), GFP_KERNEL);
	if (!state->crtcs)
		goto fail;
	state->planes = FUNC2(dev->mode_config.num_total_plane,
				sizeof(*state->planes), GFP_KERNEL);
	if (!state->planes)
		goto fail;

	state->dev = dev;

	FUNC0("Allocated atomic state %p\n", state);

	return 0;
fail:
	FUNC1(state);
	return -ENOMEM;
}