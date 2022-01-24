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
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {int /*<<< orphan*/  power_domain; int /*<<< orphan*/  (* get_hw_state ) (struct intel_encoder*,int*) ;TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TRANS_DDI_HDCP_SIGNALLING ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_encoder*,int*) ; 
 struct drm_i915_private* FUNC7 (struct drm_device*) ; 

int FUNC8(struct intel_encoder *intel_encoder,
				     bool enable)
{
	struct drm_device *dev = intel_encoder->base.dev;
	struct drm_i915_private *dev_priv = FUNC7(dev);
	intel_wakeref_t wakeref;
	enum pipe pipe = 0;
	int ret = 0;
	u32 tmp;

	wakeref = FUNC4(dev_priv,
						     intel_encoder->power_domain);
	if (FUNC3(!wakeref))
		return -ENXIO;

	if (FUNC3(!intel_encoder->get_hw_state(intel_encoder, &pipe))) {
		ret = -EIO;
		goto out;
	}

	tmp = FUNC0(FUNC2(pipe));
	if (enable)
		tmp |= TRANS_DDI_HDCP_SIGNALLING;
	else
		tmp &= ~TRANS_DDI_HDCP_SIGNALLING;
	FUNC1(FUNC2(pipe), tmp);
out:
	FUNC5(dev_priv, intel_encoder->power_domain, wakeref);
	return ret;
}