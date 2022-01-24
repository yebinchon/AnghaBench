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
struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  TGL_TRANS_CLK_SEL_DISABLED ; 
 int TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TRANS_CLK_SEL_DISABLED ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC3(crtc_state->base.crtc->dev);
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;

	if (cpu_transcoder != TRANSCODER_EDP) {
		if (FUNC1(dev_priv) >= 12)
			FUNC0(FUNC2(cpu_transcoder),
				   TGL_TRANS_CLK_SEL_DISABLED);
		else
			FUNC0(FUNC2(cpu_transcoder),
				   TRANS_CLK_SEL_DISABLED);
	}
}