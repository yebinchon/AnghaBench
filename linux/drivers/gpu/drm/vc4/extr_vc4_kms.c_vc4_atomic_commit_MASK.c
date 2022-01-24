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
struct vc4_dev {int /*<<< orphan*/  async_modeset; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int legacy_cursor_update; int /*<<< orphan*/  commit_work; scalar_t__ async_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  commit_work ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_atomic_state*) ; 
 int FUNC5 (struct drm_device*,struct drm_atomic_state*) ; 
 int FUNC6 (struct drm_atomic_state*,int) ; 
 scalar_t__ FUNC7 (struct drm_atomic_state*,int) ; 
 int FUNC8 (struct drm_device*,struct drm_atomic_state*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 
 struct vc4_dev* FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_atomic_state*) ; 

__attribute__((used)) static int FUNC14(struct drm_device *dev,
			     struct drm_atomic_state *state,
			     bool nonblock)
{
	struct vc4_dev *vc4 = FUNC11(dev);
	int ret;

	if (state->async_update) {
		ret = FUNC2(&vc4->async_modeset);
		if (ret)
			return ret;

		ret = FUNC5(dev, state);
		if (ret) {
			FUNC12(&vc4->async_modeset);
			return ret;
		}

		FUNC3(dev, state);

		FUNC4(dev, state);

		FUNC12(&vc4->async_modeset);

		return 0;
	}

	/* We know for sure we don't want an async update here. Set
	 * state->legacy_cursor_update to false to prevent
	 * drm_atomic_helper_setup_commit() from auto-completing
	 * commit->flip_done.
	 */
	state->legacy_cursor_update = false;
	ret = FUNC6(state, nonblock);
	if (ret)
		return ret;

	FUNC1(&state->commit_work, commit_work);

	ret = FUNC2(&vc4->async_modeset);
	if (ret)
		return ret;

	ret = FUNC5(dev, state);
	if (ret) {
		FUNC12(&vc4->async_modeset);
		return ret;
	}

	if (!nonblock) {
		ret = FUNC8(dev, state, true);
		if (ret) {
			FUNC4(dev, state);
			FUNC12(&vc4->async_modeset);
			return ret;
		}
	}

	/*
	 * This is the point of no return - everything below never fails except
	 * when the hw goes bonghits. Which means we can commit the new state on
	 * the software side now.
	 */

	FUNC0(FUNC7(state, false) < 0);

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

	FUNC9(state);
	if (nonblock)
		FUNC10(system_unbound_wq, &state->commit_work);
	else
		FUNC13(state);

	return 0;
}