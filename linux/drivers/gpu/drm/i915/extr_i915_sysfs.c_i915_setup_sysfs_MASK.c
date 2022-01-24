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
struct TYPE_4__ {TYPE_1__* primary; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {struct device* kdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int FUNC7 (struct drm_i915_private*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dpf_attrs ; 
 int /*<<< orphan*/  dpf_attrs_1 ; 
 int /*<<< orphan*/  gen6_attrs ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  media_rc6_attr_group ; 
 int /*<<< orphan*/  rc6_attr_group ; 
 int /*<<< orphan*/  rc6p_attr_group ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlv_attrs ; 

void FUNC12(struct drm_i915_private *dev_priv)
{
	struct device *kdev = dev_priv->drm.primary->kdev;
	int ret;

#ifdef CONFIG_PM
	if (HAS_RC6(dev_priv)) {
		ret = sysfs_merge_group(&kdev->kobj,
					&rc6_attr_group);
		if (ret)
			DRM_ERROR("RC6 residency sysfs setup failed\n");
	}
	if (HAS_RC6p(dev_priv)) {
		ret = sysfs_merge_group(&kdev->kobj,
					&rc6p_attr_group);
		if (ret)
			DRM_ERROR("RC6p residency sysfs setup failed\n");
	}
	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
		ret = sysfs_merge_group(&kdev->kobj,
					&media_rc6_attr_group);
		if (ret)
			DRM_ERROR("Media RC6 residency sysfs setup failed\n");
	}
#endif
	if (FUNC1(dev_priv)) {
		ret = FUNC8(kdev, &dpf_attrs);
		if (ret)
			FUNC0("l3 parity sysfs setup failed\n");

		if (FUNC7(dev_priv) > 1) {
			ret = FUNC8(kdev,
						     &dpf_attrs_1);
			if (ret)
				FUNC0("l3 parity slice 1 setup failed\n");
		}
	}

	ret = 0;
	if (FUNC6(dev_priv) || FUNC5(dev_priv))
		ret = FUNC10(&kdev->kobj, vlv_attrs);
	else if (FUNC4(dev_priv) >= 6)
		ret = FUNC10(&kdev->kobj, gen6_attrs);
	if (ret)
		FUNC0("RPS sysfs setup failed\n");

	FUNC9(kdev);
}