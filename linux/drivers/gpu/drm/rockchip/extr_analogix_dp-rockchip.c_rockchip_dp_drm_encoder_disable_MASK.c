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
struct rockchip_dp_device {int /*<<< orphan*/  dev; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int /*<<< orphan*/  self_refresh_active; } ;
struct drm_crtc {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PSR_WAIT_LINE_FLAG_TIMEOUT_MS ; 
 struct drm_crtc_state* FUNC1 (struct drm_atomic_state*,struct drm_crtc*) ; 
 struct drm_crtc* FUNC2 (struct drm_encoder*,struct drm_atomic_state*) ; 
 int FUNC3 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 struct rockchip_dp_device* FUNC4 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder,
					    struct drm_atomic_state *state)
{
	struct rockchip_dp_device *dp = FUNC4(encoder);
	struct drm_crtc *crtc;
	struct drm_crtc_state *new_crtc_state = NULL;
	int ret;

	crtc = FUNC2(encoder, state);
	/* No crtc means we're doing a full shutdown */
	if (!crtc)
		return;

	new_crtc_state = FUNC1(state, crtc);
	/* If we're not entering self-refresh, no need to wait for vact */
	if (!new_crtc_state || !new_crtc_state->self_refresh_active)
		return;

	ret = FUNC3(crtc, PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
	if (ret)
		FUNC0(dp->dev, "line flag irq timed out\n");
}