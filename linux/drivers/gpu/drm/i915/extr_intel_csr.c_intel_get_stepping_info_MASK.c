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
struct stepping_info {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct stepping_info*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 struct stepping_info* bxt_stepping_info ; 
 struct stepping_info* icl_stepping_info ; 
 struct stepping_info const no_stepping_info ; 
 struct stepping_info* skl_stepping_info ; 

__attribute__((used)) static const struct stepping_info *
FUNC5(struct drm_i915_private *dev_priv)
{
	const struct stepping_info *si;
	unsigned int size;

	if (FUNC3(dev_priv)) {
		size = FUNC0(icl_stepping_info);
		si = icl_stepping_info;
	} else if (FUNC4(dev_priv)) {
		size = FUNC0(skl_stepping_info);
		si = skl_stepping_info;
	} else if (FUNC2(dev_priv)) {
		size = FUNC0(bxt_stepping_info);
		si = bxt_stepping_info;
	} else {
		size = 0;
		si = NULL;
	}

	if (FUNC1(dev_priv) < size)
		return si + FUNC1(dev_priv);

	return &no_stepping_info;
}