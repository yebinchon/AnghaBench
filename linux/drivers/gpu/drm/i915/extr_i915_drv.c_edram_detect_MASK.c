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
struct drm_i915_private {int edram_size_mb; TYPE_1__ drm; int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int EDRAM_ENABLED ; 
 int /*<<< orphan*/  HSW_EDRAM_CAP ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	u32 edram_cap = 0;

	if (!(FUNC2(dev_priv) ||
	      FUNC1(dev_priv) ||
	      FUNC0(dev_priv) >= 9))
		return;

	edram_cap = FUNC3(&dev_priv->uncore, HSW_EDRAM_CAP);

	/* NB: We can't write IDICR yet because we don't have gt funcs set up */

	if (!(edram_cap & EDRAM_ENABLED))
		return;

	/*
	 * The needed capability bits for size calculation are not there with
	 * pre gen9 so return 128MB always.
	 */
	if (FUNC0(dev_priv) < 9)
		dev_priv->edram_size_mb = 128;
	else
		dev_priv->edram_size_mb =
			FUNC5(dev_priv, edram_cap);

	FUNC4(dev_priv->drm.dev,
		 "Found %uMB of eDRAM\n", dev_priv->edram_size_mb);
}