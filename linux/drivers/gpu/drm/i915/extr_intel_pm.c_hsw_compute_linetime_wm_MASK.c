#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct drm_display_mode {scalar_t__ crtc_clock; int crtc_htotal; } ;
struct TYPE_4__ {int /*<<< orphan*/  active; struct drm_display_mode adjusted_mode; int /*<<< orphan*/  state; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_5__ {scalar_t__ cdclk; } ;
struct TYPE_6__ {TYPE_2__ logical; } ;
struct intel_atomic_state {TYPE_3__ cdclk; } ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 struct intel_atomic_state* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC5(const struct intel_crtc_state *crtc_state)
{
	const struct intel_atomic_state *intel_state =
		FUNC4(crtc_state->base.state);
	const struct drm_display_mode *adjusted_mode =
		&crtc_state->base.adjusted_mode;
	u32 linetime, ips_linetime;

	if (!crtc_state->base.active)
		return 0;
	if (FUNC3(adjusted_mode->crtc_clock == 0))
		return 0;
	if (FUNC3(intel_state->cdclk.logical.cdclk == 0))
		return 0;

	/* The WM are computed with base on how long it takes to fill a single
	 * row at the given clock rate, multiplied by 8.
	 * */
	linetime = FUNC0(adjusted_mode->crtc_htotal * 1000 * 8,
				     adjusted_mode->crtc_clock);
	ips_linetime = FUNC0(adjusted_mode->crtc_htotal * 1000 * 8,
					 intel_state->cdclk.logical.cdclk);

	return FUNC1(ips_linetime) |
	       FUNC2(linetime);
}