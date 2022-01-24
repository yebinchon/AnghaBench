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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned short INTEL_PCH_CNP_DEVICE_ID_TYPE ; 
 unsigned short INTEL_PCH_CPT_DEVICE_ID_TYPE ; 
 unsigned short INTEL_PCH_IBX_DEVICE_ID_TYPE ; 
 unsigned short INTEL_PCH_ICP_DEVICE_ID_TYPE ; 
 unsigned short INTEL_PCH_LPT_DEVICE_ID_TYPE ; 
 unsigned short INTEL_PCH_LPT_LP_DEVICE_ID_TYPE ; 
 unsigned short INTEL_PCH_MCC_DEVICE_ID_TYPE ; 
 unsigned short INTEL_PCH_SPT_DEVICE_ID_TYPE ; 
 unsigned short INTEL_PCH_TGP_DEVICE_ID_TYPE ; 
 scalar_t__ FUNC1 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private const*,int) ; 
 scalar_t__ FUNC7 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC12 (struct drm_i915_private const*) ; 
 scalar_t__ FUNC13 (struct drm_i915_private const*) ; 

__attribute__((used)) static unsigned short
FUNC14(const struct drm_i915_private *dev_priv)
{
	unsigned short id = 0;

	/*
	 * In a virtualized passthrough environment we can be in a
	 * setup where the ISA bridge is not able to be passed through.
	 * In this case, a south bridge can be emulated and we have to
	 * make an educated guess as to which PCH is really there.
	 */

	if (FUNC13(dev_priv))
		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
	else if (FUNC5(dev_priv))
		id = INTEL_PCH_MCC_DEVICE_ID_TYPE;
	else if (FUNC9(dev_priv))
		id = INTEL_PCH_ICP_DEVICE_ID_TYPE;
	else if (FUNC3(dev_priv) || FUNC4(dev_priv))
		id = INTEL_PCH_CNP_DEVICE_ID_TYPE;
	else if (FUNC11(dev_priv) || FUNC12(dev_priv))
		id = INTEL_PCH_SPT_DEVICE_ID_TYPE;
	else if (FUNC8(dev_priv) || FUNC1(dev_priv))
		id = INTEL_PCH_LPT_LP_DEVICE_ID_TYPE;
	else if (FUNC7(dev_priv) || FUNC2(dev_priv))
		id = INTEL_PCH_LPT_DEVICE_ID_TYPE;
	else if (FUNC6(dev_priv, 6) || FUNC10(dev_priv))
		id = INTEL_PCH_CPT_DEVICE_ID_TYPE;
	else if (FUNC6(dev_priv, 5))
		id = INTEL_PCH_IBX_DEVICE_ID_TYPE;

	if (id)
		FUNC0("Assuming PCH ID %04x\n", id);
	else
		FUNC0("Assuming no PCH\n");

	return id;
}