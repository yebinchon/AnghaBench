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
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int /*<<< orphan*/  c8_planes; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;

/* Variables and functions */
 struct intel_crtc_state* FUNC0 (struct intel_atomic_state*,struct intel_crtc*) ; 
 struct intel_atomic_state* FUNC1 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct intel_crtc_state *new_crtc_state)
{
	struct intel_crtc *crtc = FUNC2(new_crtc_state->base.crtc);
	struct intel_atomic_state *state =
		FUNC1(new_crtc_state->base.state);
	const struct intel_crtc_state *old_crtc_state =
		FUNC0(state, crtc);

	return !old_crtc_state->c8_planes != !new_crtc_state->c8_planes;
}