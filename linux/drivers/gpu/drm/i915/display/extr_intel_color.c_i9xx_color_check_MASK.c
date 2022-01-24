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
struct TYPE_2__ {scalar_t__ gamma_lut; } ;
struct intel_crtc_state {int gamma_enable; int /*<<< orphan*/  gamma_mode; int /*<<< orphan*/  c8_planes; TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc_state*) ; 
 int FUNC2 (struct intel_crtc_state*) ; 

__attribute__((used)) static int FUNC3(struct intel_crtc_state *crtc_state)
{
	int ret;

	ret = FUNC0(crtc_state);
	if (ret)
		return ret;

	crtc_state->gamma_enable =
		crtc_state->base.gamma_lut &&
		!crtc_state->c8_planes;

	crtc_state->gamma_mode = FUNC1(crtc_state);

	ret = FUNC2(crtc_state);
	if (ret)
		return ret;

	return 0;
}