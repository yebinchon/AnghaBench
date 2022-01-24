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
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_atomic_state*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_device*,struct drm_atomic_state*) ; 
 int FUNC5 (struct drm_atomic_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_atomic_state*) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev,
		  struct drm_atomic_state *state,
		  bool async)
{
	int ret;

	ret = FUNC4(dev, state);
	if (ret)
		return ret;

	ret = FUNC5(state, true);
	if (ret) {
		FUNC0(dev, state);
		return ret;
	}

	/*
	 * Everything below can be run asynchronously without the need to grab
	 * any modeset locks at all under one condition: It must be guaranteed
	 * that the asynchronous work has either been cancelled (if the driver
	 * supports it, which at least requires that the framebuffers get
	 * cleaned up with drm_atomic_helper_cleanup_planes()) or completed
	 * before the new state gets committed on the software side with
	 * drm_atomic_helper_swap_state().
	 *
	 * This scheme allows new atomic state updates to be prepared and
	 * checked in parallel to the asynchronous completion of the previous
	 * update. Which is important since compositors need to figure out the
	 * composition of the next frame right after having submitted the
	 * current layout.
	 */

	FUNC1(dev, state);

	FUNC3(dev, state, 0);

	FUNC2(dev, state);

	FUNC6(dev, state);

	FUNC0(dev, state);

	return 0;
}