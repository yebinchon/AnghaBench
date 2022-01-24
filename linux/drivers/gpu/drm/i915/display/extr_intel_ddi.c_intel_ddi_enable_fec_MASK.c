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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_crtc_state {int /*<<< orphan*/  fec_enable; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DP_TP_CTL_FEC_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DP_TP_STATUS_FEC_ENABLE_LIVE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct intel_encoder *encoder,
				 const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC6(encoder->base.dev);
	enum port port = encoder->port;
	u32 val;

	if (!crtc_state->fec_enable)
		return;

	val = FUNC3(FUNC0(port));
	val |= DP_TP_CTL_FEC_ENABLE;
	FUNC4(FUNC0(port), val);

	if (FUNC5(dev_priv, FUNC1(port),
				  DP_TP_STATUS_FEC_ENABLE_LIVE, 1))
		FUNC2("Timed out waiting for FEC Enable Status\n");
}