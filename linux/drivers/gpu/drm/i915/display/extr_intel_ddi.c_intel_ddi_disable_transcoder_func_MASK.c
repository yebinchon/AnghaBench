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
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int quirks; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int QUIRK_INCREASE_DDI_DISABLED_TIME ; 
 int TGL_TRANS_DDI_PORT_MASK ; 
 int TRANS_DDI_DP_VC_PAYLOAD_ALLOC ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int TRANS_DDI_FUNC_ENABLE ; 
 int TRANS_DDI_PORT_MASK ; 
 scalar_t__ FUNC5 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC8(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC7(crtc->base.dev);
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
	i915_reg_t reg = FUNC4(cpu_transcoder);
	u32 val = FUNC1(reg);

	if (FUNC3(dev_priv) >= 12) {
		val &= ~(TRANS_DDI_FUNC_ENABLE | TGL_TRANS_DDI_PORT_MASK |
			 TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
	} else {
		val &= ~(TRANS_DDI_FUNC_ENABLE | TRANS_DDI_PORT_MASK |
			 TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
	}
	FUNC2(reg, val);

	if (dev_priv->quirks & QUIRK_INCREASE_DDI_DISABLED_TIME &&
	    FUNC5(crtc_state, INTEL_OUTPUT_HDMI)) {
		FUNC0("Quirk Increase DDI disabled time\n");
		/* Quirk time at 100ms for reliable operation */
		FUNC6(100);
	}
}