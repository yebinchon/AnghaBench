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
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ enable_gvt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EIO ; 
 int ENODEV ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 TYPE_1__ i915_modparams ; 
 int FUNC4 (struct drm_i915_private*) ; 

int FUNC5(struct drm_i915_private *dev_priv)
{
	int ret;

	if (FUNC3(dev_priv))
		return -ENODEV;

	if (!i915_modparams.enable_gvt) {
		FUNC0("GVT-g is disabled by kernel params\n");
		return 0;
	}

	if (FUNC2(dev_priv)) {
		FUNC1("i915 GVT-g loading failed due to Graphics virtualization is not yet supported with GuC submission\n");
		return -EIO;
	}

	ret = FUNC4(dev_priv);
	if (ret) {
		FUNC0("Fail to init GVT device\n");
		goto bail;
	}

	return 0;

bail:
	i915_modparams.enable_gvt = 0;
	return 0;
}