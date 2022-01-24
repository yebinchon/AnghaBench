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
typedef  int u32 ;
struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {int output_types; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_TVOUT ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC4(crtc_state->base.crtc->dev);

	/*
	 * On i965gm the hardware frame counter reads
	 * zero when the TV encoder is enabled :(
	 */
	if (FUNC3(dev_priv) &&
	    (crtc_state->output_types & FUNC0(INTEL_OUTPUT_TVOUT)))
		return 0;

	if (FUNC1(dev_priv) >= 5 || FUNC2(dev_priv))
		return 0xffffffff; /* full 32 bit counter */
	else if (FUNC1(dev_priv) >= 3)
		return 0xffffff; /* only 24 bits of frame count */
	else
		return 0; /* Gen2 doesn't have a hardware frame counter */
}