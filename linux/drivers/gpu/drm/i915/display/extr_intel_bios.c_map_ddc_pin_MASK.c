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
typedef  int u8 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ PCH_ICP ; 
 int* cnp_ddc_pin_map ; 
 int* icp_ddc_pin_map ; 

__attribute__((used)) static u8 FUNC4(struct drm_i915_private *dev_priv, u8 vbt_pin)
{
	const u8 *ddc_pin_map;
	int n_entries;

	if (FUNC3(dev_priv) >= PCH_ICP) {
		ddc_pin_map = icp_ddc_pin_map;
		n_entries = FUNC0(icp_ddc_pin_map);
	} else if (FUNC2(dev_priv)) {
		ddc_pin_map = cnp_ddc_pin_map;
		n_entries = FUNC0(cnp_ddc_pin_map);
	} else {
		/* Assuming direct map */
		return vbt_pin;
	}

	if (vbt_pin < n_entries && ddc_pin_map[vbt_pin] != 0)
		return ddc_pin_map[vbt_pin];

	FUNC1("Ignoring alternate pin: VBT claims DDC pin %d, which is not valid for this platform\n",
		      vbt_pin);
	return 0;
}