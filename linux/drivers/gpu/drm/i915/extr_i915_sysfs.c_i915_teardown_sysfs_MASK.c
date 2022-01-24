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
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dpf_attrs ; 
 int /*<<< orphan*/  dpf_attrs_1 ; 
 int /*<<< orphan*/  gen6_attrs ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  rc6_attr_group ; 
 int /*<<< orphan*/  rc6p_attr_group ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlv_attrs ; 

void FUNC6(struct drm_i915_private *dev_priv)
{
	struct device *kdev = dev_priv->drm.primary->kdev;

	FUNC3(kdev);

	if (FUNC1(dev_priv) || FUNC0(dev_priv))
		FUNC4(&kdev->kobj, vlv_attrs);
	else
		FUNC4(&kdev->kobj, gen6_attrs);
	FUNC2(kdev,  &dpf_attrs_1);
	FUNC2(kdev,  &dpf_attrs);
#ifdef CONFIG_PM
	sysfs_unmerge_group(&kdev->kobj, &rc6_attr_group);
	sysfs_unmerge_group(&kdev->kobj, &rc6p_attr_group);
#endif
}