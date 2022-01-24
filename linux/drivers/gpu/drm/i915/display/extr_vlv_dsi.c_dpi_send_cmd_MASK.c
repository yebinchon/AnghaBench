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
struct drm_encoder {struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_encoder base; } ;
struct intel_dsi {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  DPI_LP_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  SPL_PKT_SENT_INTERRUPT ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC7 (struct drm_device*) ; 

__attribute__((used)) static int FUNC8(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
			enum port port)
{
	struct drm_encoder *encoder = &intel_dsi->base.base;
	struct drm_device *dev = encoder->dev;
	struct drm_i915_private *dev_priv = FUNC7(dev);
	u32 mask;

	/* XXX: pipe, hs */
	if (hs)
		cmd &= ~DPI_LP_MODE;
	else
		cmd |= DPI_LP_MODE;

	/* clear bit */
	FUNC3(FUNC5(port), SPL_PKT_SENT_INTERRUPT);

	/* XXX: old code skips write if control unchanged */
	if (cmd == FUNC2(FUNC4(port)))
		FUNC0("Same special packet %02x twice in a row.\n", cmd);

	FUNC3(FUNC4(port), cmd);

	mask = SPL_PKT_SENT_INTERRUPT;
	if (FUNC6(dev_priv, FUNC5(port), mask, 100))
		FUNC1("Video mode command 0x%08x send failed.\n", cmd);

	return 0;
}