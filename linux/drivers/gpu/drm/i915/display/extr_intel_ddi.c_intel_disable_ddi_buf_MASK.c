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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDI_BUF_CTL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DP_TP_CTL_ENABLE ; 
 int DP_TP_CTL_LINK_TRAIN_MASK ; 
 int DP_TP_CTL_LINK_TRAIN_PAT1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct intel_encoder *encoder,
				  const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC6(encoder->base.dev);
	enum port port = encoder->port;
	bool wait = false;
	u32 val;

	val = FUNC2(FUNC0(port));
	if (val & DDI_BUF_CTL_ENABLE) {
		val &= ~DDI_BUF_CTL_ENABLE;
		FUNC3(FUNC0(port), val);
		wait = true;
	}

	val = FUNC2(FUNC1(port));
	val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
	val |= DP_TP_CTL_LINK_TRAIN_PAT1;
	FUNC3(FUNC1(port), val);

	/* Disable FEC in DP Sink */
	FUNC4(encoder, crtc_state);

	if (wait)
		FUNC5(dev_priv, port);
}