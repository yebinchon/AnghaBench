#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_crtc_scaler_state {TYPE_2__* scalers; } ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {struct intel_crtc_scaler_state scaler_state; TYPE_1__ base; } ;
struct intel_crtc {int num_scalers; } ;
struct TYPE_4__ {int /*<<< orphan*/  in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_crtc*,int) ; 
 struct intel_crtc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *intel_crtc = FUNC1(crtc_state->base.crtc);
	const struct intel_crtc_scaler_state *scaler_state =
		&crtc_state->scaler_state;
	int i;

	/* loop through and disable scalers that aren't in use */
	for (i = 0; i < intel_crtc->num_scalers; i++) {
		if (!scaler_state->scalers[i].in_use)
			FUNC0(intel_crtc, i);
	}
}