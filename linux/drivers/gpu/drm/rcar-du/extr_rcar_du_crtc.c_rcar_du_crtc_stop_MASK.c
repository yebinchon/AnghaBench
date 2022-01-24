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
struct drm_crtc {int dummy; } ;
struct rcar_du_crtc {int /*<<< orphan*/  group; int /*<<< orphan*/  dev; struct drm_crtc crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSYSR_TVM_MASK ; 
 int /*<<< orphan*/  DSYSR_TVM_SWITCH ; 
 int /*<<< orphan*/  RCAR_DU_FEATURE_TVM_SYNC ; 
 int /*<<< orphan*/  RCAR_DU_FEATURE_VSP1_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_du_crtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_du_crtc*) ; 

__attribute__((used)) static void FUNC7(struct rcar_du_crtc *rcrtc)
{
	struct drm_crtc *crtc = &rcrtc->crtc;

	/*
	 * Disable all planes and wait for the change to take effect. This is
	 * required as the plane enable registers are updated on vblank, and no
	 * vblank will occur once the CRTC is stopped. Disabling planes when
	 * starting the CRTC thus wouldn't be enough as it would start scanning
	 * out immediately from old frame buffers until the next vblank.
	 *
	 * This increases the CRTC stop delay, especially when multiple CRTCs
	 * are stopped in one operation as we now wait for one vblank per CRTC.
	 * Whether this can be improved needs to be researched.
	 */
	FUNC1(rcrtc);

	/*
	 * Disable vertical blanking interrupt reporting. We first need to wait
	 * for page flip completion before stopping the CRTC as userspace
	 * expects page flips to eventually complete.
	 */
	FUNC3(rcrtc);
	FUNC0(crtc);

	/* Disable the VSP compositor. */
	if (FUNC5(rcrtc->dev, RCAR_DU_FEATURE_VSP1_SOURCE))
		FUNC6(rcrtc);

	/*
	 * Select switch sync mode. This stops display operation and configures
	 * the HSYNC and VSYNC signals as inputs.
	 *
	 * TODO: Find another way to stop the display for DUs that don't support
	 * TVM sync.
	 */
	if (FUNC5(rcrtc->dev, RCAR_DU_FEATURE_TVM_SYNC))
		FUNC2(rcrtc, DSYSR_TVM_MASK,
					   DSYSR_TVM_SWITCH);

	FUNC4(rcrtc->group, false);
}