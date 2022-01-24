#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rockchip_dp_device {int /*<<< orphan*/  grfclk; TYPE_2__* dev; TYPE_1__* data; int /*<<< orphan*/  grf; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {scalar_t__ self_refresh_active; } ;
struct drm_crtc {int dummy; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  lcdsel_grf_reg; int /*<<< orphan*/  lcdsel_big; int /*<<< orphan*/  lcdsel_lit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct drm_crtc_state* FUNC4 (struct drm_atomic_state*,struct drm_crtc*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct drm_encoder*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_crtc* FUNC7 (struct drm_encoder*,struct drm_atomic_state*) ; 
 struct rockchip_dp_device* FUNC8 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC9(struct drm_encoder *encoder,
					   struct drm_atomic_state *state)
{
	struct rockchip_dp_device *dp = FUNC8(encoder);
	struct drm_crtc *crtc;
	struct drm_crtc_state *old_crtc_state;
	int ret;
	u32 val;

	crtc = FUNC7(encoder, state);
	if (!crtc)
		return;

	old_crtc_state = FUNC4(state, crtc);
	/* Coming back from self refresh, nothing to do */
	if (old_crtc_state && old_crtc_state->self_refresh_active)
		return;

	ret = FUNC5(dp->dev->of_node, encoder);
	if (ret < 0)
		return;

	if (ret)
		val = dp->data->lcdsel_lit;
	else
		val = dp->data->lcdsel_big;

	FUNC0(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");

	ret = FUNC3(dp->grfclk);
	if (ret < 0) {
		FUNC1(dp->dev, "failed to enable grfclk %d\n", ret);
		return;
	}

	ret = FUNC6(dp->grf, dp->data->lcdsel_grf_reg, val);
	if (ret != 0)
		FUNC1(dp->dev, "Could not write to GRF: %d\n", ret);

	FUNC2(dp->grfclk);
}