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
typedef  int u8 ;
struct TYPE_3__ {int cur_freq; } ;
struct TYPE_4__ {TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_2__ gt_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN6_PMINTRMSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PUNIT_REG_GPU_FREQ_REQ ; 
 scalar_t__ FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct drm_i915_private *dev_priv, u8 val)
{
	int err;

	if (FUNC2(FUNC1(dev_priv) && (val & 1),
		      "Odd GPU freq value\n"))
		val &= ~1;

	FUNC0(GEN6_PMINTRMSK, FUNC3(dev_priv, val));

	if (val != dev_priv->gt_pm.rps.cur_freq) {
		FUNC7(dev_priv);
		err = FUNC9(dev_priv, PUNIT_REG_GPU_FREQ_REQ, val);
		FUNC8(dev_priv);
		if (err)
			return err;

		FUNC4(dev_priv, val);
	}

	dev_priv->gt_pm.rps.cur_freq = val;
	FUNC6(FUNC5(dev_priv, val));

	return 0;
}