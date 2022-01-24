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
struct rcar_du_crtc {int /*<<< orphan*/  dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCAR_DU_FEATURE_VSP1_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_du_crtc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_du_crtc*) ; 
 struct rcar_du_crtc* FUNC4 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc,
				      struct drm_crtc_state *old_crtc_state)
{
	struct rcar_du_crtc *rcrtc = FUNC4(crtc);

	FUNC0(!crtc->state->enable);

	/*
	 * If a mode set is in progress we can be called with the CRTC disabled.
	 * We thus need to first get and setup the CRTC in order to configure
	 * planes. We must *not* put the CRTC in .atomic_flush(), as it must be
	 * kept awake until the .atomic_enable() call that will follow. The get
	 * operation in .atomic_enable() will in that case be a no-op, and the
	 * CRTC will be put later in .atomic_disable().
	 *
	 * If a mode set is not in progress the CRTC is enabled, and the
	 * following get call will be a no-op. There is thus no need to balance
	 * it in .atomic_flush() either.
	 */
	FUNC1(rcrtc);

	if (FUNC2(rcrtc->dev, RCAR_DU_FEATURE_VSP1_SOURCE))
		FUNC3(rcrtc);
}