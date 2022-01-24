#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dram_info {int is_16gb_dimm; int /*<<< orphan*/  ranks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  bandwidth_kbps; } ;
struct drm_i915_private {struct dram_info dram_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct drm_i915_private *dev_priv)
{
	struct dram_info *dram_info = &dev_priv->dram_info;
	int ret;

	/*
	 * Assume 16Gb DIMMs are present until proven otherwise.
	 * This is only used for the level 0 watermark latency
	 * w/a which does not apply to bxt/glk.
	 */
	dram_info->is_16gb_dimm = !FUNC2(dev_priv);

	if (FUNC1(dev_priv) < 9)
		return;

	if (FUNC2(dev_priv))
		ret = FUNC3(dev_priv);
	else
		ret = FUNC4(dev_priv);
	if (ret)
		return;

	FUNC0("DRAM bandwidth: %u kBps, channels: %u\n",
		      dram_info->bandwidth_kbps,
		      dram_info->num_channels);

	FUNC0("DRAM ranks: %u, 16Gb DIMMs: %s\n",
		      dram_info->ranks, FUNC5(dram_info->is_16gb_dimm));
}