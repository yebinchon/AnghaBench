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
typedef  int u32 ;
struct dram_info {int bandwidth_kbps; int num_channels; int valid; int /*<<< orphan*/  type; } ;
struct drm_i915_private {struct dram_info dram_info; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU ; 
 int SKL_MEMORY_FREQ_MULTIPLIER_HZ ; 
 int SKL_REQ_DATA_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 

__attribute__((used)) static int
FUNC7(struct drm_i915_private *dev_priv)
{
	struct dram_info *dram_info = &dev_priv->dram_info;
	u32 mem_freq_khz, val;
	int ret;

	dram_info->type = FUNC6(dev_priv);
	FUNC1("DRAM type: %s\n", FUNC4(dram_info->type));

	ret = FUNC5(dev_priv);
	if (ret)
		return ret;

	val = FUNC3(SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
	mem_freq_khz = FUNC0((val & SKL_REQ_DATA_MASK) *
				    SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);

	dram_info->bandwidth_kbps = dram_info->num_channels *
							mem_freq_khz * 8;

	if (dram_info->bandwidth_kbps == 0) {
		FUNC2("Couldn't get system memory bandwidth\n");
		return -EINVAL;
	}

	dram_info->valid = true;
	return 0;
}