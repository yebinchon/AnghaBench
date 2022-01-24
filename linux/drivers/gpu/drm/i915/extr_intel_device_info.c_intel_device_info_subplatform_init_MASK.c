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
typedef  int /*<<< orphan*/  u16 ;
struct intel_runtime_info {int* platform_mask; } ;
struct intel_device_info {int /*<<< orphan*/  platform; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 struct intel_device_info* FUNC4 (struct drm_i915_private*) ; 
 int INTEL_SUBPLATFORM_BITS ; 
 unsigned int const INTEL_SUBPLATFORM_PORTF ; 
 unsigned int const INTEL_SUBPLATFORM_ULT ; 
 unsigned int const INTEL_SUBPLATFORM_ULX ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 struct intel_runtime_info* FUNC7 (struct drm_i915_private*) ; 
 unsigned int FUNC8 (struct intel_runtime_info const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct intel_runtime_info const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subplatform_portf_ids ; 
 int /*<<< orphan*/  subplatform_ult_ids ; 
 int /*<<< orphan*/  subplatform_ulx_ids ; 

void FUNC11(struct drm_i915_private *i915)
{
	const struct intel_device_info *info = FUNC4(i915);
	const struct intel_runtime_info *rinfo = FUNC7(i915);
	const unsigned int pi = FUNC9(rinfo, info->platform);
	const unsigned int pb = FUNC8(rinfo, info->platform);
	u16 devid = FUNC3(i915);
	u32 mask = 0;

	/* Make sure IS_<platform> checks are working. */
	FUNC7(i915)->platform_mask[pi] = FUNC1(pb);

	/* Find and mark subplatform bits based on the PCI device id. */
	if (FUNC10(devid, subplatform_ult_ids,
		       FUNC0(subplatform_ult_ids))) {
		mask = FUNC1(INTEL_SUBPLATFORM_ULT);
	} else if (FUNC10(devid, subplatform_ulx_ids,
			      FUNC0(subplatform_ulx_ids))) {
		mask = FUNC1(INTEL_SUBPLATFORM_ULX);
		if (FUNC6(i915) || FUNC5(i915)) {
			/* ULX machines are also considered ULT. */
			mask |= FUNC1(INTEL_SUBPLATFORM_ULT);
		}
	} else if (FUNC10(devid, subplatform_portf_ids,
			      FUNC0(subplatform_portf_ids))) {
		mask = FUNC1(INTEL_SUBPLATFORM_PORTF);
	}

	FUNC2(mask & ~INTEL_SUBPLATFORM_BITS);

	FUNC7(i915)->platform_mask[pi] |= mask;
}