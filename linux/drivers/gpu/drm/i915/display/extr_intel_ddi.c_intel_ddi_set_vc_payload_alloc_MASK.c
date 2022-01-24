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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANS_DDI_DP_VC_PAYLOAD_ALLOC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(const struct intel_crtc_state *crtc_state,
				    bool state)
{
	struct intel_crtc *crtc = FUNC4(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC3(crtc->base.dev);
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
	u32 temp;

	temp = FUNC0(FUNC2(cpu_transcoder));
	if (state == true)
		temp |= TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
	else
		temp &= ~TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
	FUNC1(FUNC2(cpu_transcoder), temp);
}