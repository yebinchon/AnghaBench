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
typedef  union hdmi_infoframe {int dummy; } hdmi_infoframe ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;

/* Variables and functions */
 int DRM_UT_KMS ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int drm_debug ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union hdmi_infoframe const*) ; 

__attribute__((used)) static void
FUNC3(struct drm_i915_private *dev_priv,
			       bool fastset, const char *name,
			       const union hdmi_infoframe *a,
			       const union hdmi_infoframe *b)
{
	if (fastset) {
		if ((drm_debug & DRM_UT_KMS) == 0)
			return;

		FUNC0(DRM_UT_KMS, "fastset mismatch in %s infoframe", name);
		FUNC0(DRM_UT_KMS, "expected:");
		FUNC2(KERN_DEBUG, dev_priv->drm.dev, a);
		FUNC0(DRM_UT_KMS, "found");
		FUNC2(KERN_DEBUG, dev_priv->drm.dev, b);
	} else {
		FUNC1("mismatch in %s infoframe", name);
		FUNC1("expected:");
		FUNC2(KERN_ERR, dev_priv->drm.dev, a);
		FUNC1("found");
		FUNC2(KERN_ERR, dev_priv->drm.dev, b);
	}
}