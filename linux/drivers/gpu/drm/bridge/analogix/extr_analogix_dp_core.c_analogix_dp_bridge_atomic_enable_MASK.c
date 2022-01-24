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
struct drm_crtc_state {scalar_t__ self_refresh_active; } ;
struct drm_crtc {int dummy; } ;
struct drm_bridge {struct analogix_dp_device* driver_private; } ;
struct drm_atomic_state {int dummy; } ;
struct analogix_dp_device {scalar_t__ dpms_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ DRM_MODE_DPMS_ON ; 
 int MAX_PLL_LOCK_LOOP ; 
 int FUNC1 (struct analogix_dp_device*) ; 
 struct drm_crtc* FUNC2 (struct analogix_dp_device*,struct drm_atomic_state*) ; 
 scalar_t__ FUNC3 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct drm_crtc_state* FUNC5 (struct drm_atomic_state*,struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct drm_bridge *bridge,
					     struct drm_atomic_state *state)
{
	struct analogix_dp_device *dp = bridge->driver_private;
	struct drm_crtc *crtc;
	struct drm_crtc_state *old_crtc_state;
	int timeout_loop = 0;
	int ret;

	crtc = FUNC2(dp, state);
	if (!crtc)
		return;

	old_crtc_state = FUNC5(state, crtc);
	/* Not a full enable, just disable PSR and continue */
	if (old_crtc_state && old_crtc_state->self_refresh_active) {
		ret = FUNC1(dp);
		if (ret)
			FUNC0("Failed to disable psr %d\n", ret);
		return;
	}

	if (dp->dpms_mode == DRM_MODE_DPMS_ON)
		return;

	while (timeout_loop < MAX_PLL_LOCK_LOOP) {
		if (FUNC3(dp) == 0) {
			dp->dpms_mode = DRM_MODE_DPMS_ON;
			return;
		}
		FUNC4(dp->dev, "failed to set bridge, retry: %d\n",
			timeout_loop);
		timeout_loop++;
		FUNC6(10, 11);
	}
	FUNC4(dp->dev, "too many times retry set bridge, give it up\n");
}