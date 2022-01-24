#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  attr; } ;
struct TYPE_11__ {scalar_t__ id; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  sysfs_metric; TYPE_4__ sysfs_metric_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * metrics_kobj; TYPE_5__ test_config; int /*<<< orphan*/  initialized; } ;
struct TYPE_9__ {TYPE_2__* primary; } ;
struct drm_i915_private {TYPE_6__ perf; TYPE_3__ drm; } ;
struct TYPE_8__ {TYPE_1__* kdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*) ; 
 scalar_t__ FUNC13 (struct drm_i915_private*) ; 
 scalar_t__ FUNC14 (struct drm_i915_private*) ; 
 scalar_t__ FUNC15 (struct drm_i915_private*) ; 
 scalar_t__ FUNC16 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC22 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC24 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC25 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC26 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC27 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC28 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC29 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC30 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC31 (struct drm_i915_private*) ; 
 int /*<<< orphan*/ * FUNC32 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC38(struct drm_i915_private *dev_priv)
{
	int ret;

	if (!dev_priv->perf.initialized)
		return;

	/* To be sure we're synchronized with an attempted
	 * i915_perf_open_ioctl(); considering that we register after
	 * being exposed to userspace.
	 */
	FUNC34(&dev_priv->perf.lock);

	dev_priv->perf.metrics_kobj =
		FUNC32("metrics",
				       &dev_priv->drm.primary->kdev->kobj);
	if (!dev_priv->perf.metrics_kobj)
		goto exit;

	FUNC36(&dev_priv->perf.test_config.sysfs_metric_id.attr);

	if (FUNC0(dev_priv) >= 11) {
		FUNC26(dev_priv);
	} else if (FUNC3(dev_priv)) {
		FUNC23(dev_priv);
	} else if (FUNC7(dev_priv)) {
		if (FUNC4(dev_priv))
			FUNC20(dev_priv);
		if (FUNC5(dev_priv))
			FUNC21(dev_priv);
	} else if (FUNC8(dev_priv)) {
		FUNC24(dev_priv);
	} else if (FUNC10(dev_priv)) {
		if (FUNC11(dev_priv))
			FUNC27(dev_priv);
		else if (FUNC12(dev_priv))
			FUNC28(dev_priv);
	} else if (FUNC2(dev_priv)) {
		FUNC19(dev_priv);
	} else if (FUNC16(dev_priv)) {
		if (FUNC13(dev_priv))
			FUNC29(dev_priv);
		else if (FUNC14(dev_priv))
			FUNC30(dev_priv);
		else if (FUNC15(dev_priv))
			FUNC31(dev_priv);
	} else if (FUNC6(dev_priv)) {
		FUNC22(dev_priv);
	} else if (FUNC1(dev_priv)) {
		FUNC18(dev_priv);
	} else if (FUNC9(dev_priv)) {
		FUNC25(dev_priv);
}

	if (dev_priv->perf.test_config.id == 0)
		goto sysfs_error;

	ret = FUNC37(dev_priv->perf.metrics_kobj,
				 &dev_priv->perf.test_config.sysfs_metric);
	if (ret)
		goto sysfs_error;

	FUNC17(&dev_priv->perf.test_config.ref_count, 1);

	goto exit;

sysfs_error:
	FUNC33(dev_priv->perf.metrics_kobj);
	dev_priv->perf.metrics_kobj = NULL;

exit:
	FUNC35(&dev_priv->perf.lock);
}